package ru.vtosters.hooks;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import com.vk.apps.AppsFragment;
import com.vk.core.drawable.RecoloredDrawable;
import com.vk.core.fragments.FragmentImpl;
import com.vk.core.util.StringUtils;
import com.vk.music.fragment.MusicCatalogFragment1;
import com.vk.navigation.right.RightMenu;
import com.vk.newsfeed.HomeFragment;
import com.vk.newsfeed.NewsfeedFragment;
import com.vk.menu.MenuFragment;
import com.vtosters.lite.MenuCountersState;
import com.vtosters.lite.fragments.ProfileFragment;
import com.vtosters.lite.fragments.t2.c.DialogsFragment;
import com.vtosters.lite.ui.bottomnavigation.BottomNavigationMenuView;
import com.vtosters.lite.ui.bottomnavigation.BottomNavigationView;
import org.json.JSONArray;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

import static com.vtosters.lite.R.id.*;
import static ru.vtosters.hooks.other.Preferences.*;
import static ru.vtosters.hooks.other.ThemesUtils.getCSTDock;
import static ru.vtosters.lite.utils.AndroidUtils.getGlobalContext;
import static ru.vtosters.lite.utils.AndroidUtils.getResources;

public class DockBarInjector {

    public static class TabInfo {
        public final String tag;
        public final int id;
        public final int titleID;
        public final int iconID;
        public final Class<? extends FragmentImpl> fragmentClass;

        public TabInfo(String tag, int id, int titleID, int iconID, Class<? extends FragmentImpl> fragmentClass) {
            this.tag = tag;
            this.id = id;
            this.titleID = titleID;
            this.iconID = iconID;
            this.fragmentClass = fragmentClass;
        }
    }

    public static List<TabInfo> getTabs() {
        List<TabInfo> tabs = new ArrayList<>();
        tabs.add(new TabInfo(
                "tab_news",
                tab_news,
                com.vtosters.lite.R.string.newsfeed,
                com.vtosters.lite.R.drawable.ic_menu_newsfeed_outline_28,
                milkshake() ? HomeFragment.class : NewsfeedFragment.class
        ));
        tabs.add(new TabInfo(
                "tab_audios",
                menu_audios,
                com.vtosters.lite.R.string.music,
                com.vtosters.lite.R.drawable.ic_note_24,
                MusicCatalogFragment1.class
        ));
        tabs.add(new TabInfo(
                "tab_messages",
                tab_messages,
                com.vtosters.lite.R.string.messages,
                com.vtosters.lite.R.drawable.ic_comment_outline_28,
                DialogsFragment.class
        ));
        tabs.add(new TabInfo(
                "tab_profile",
                tab_menu,
                milkshake() ? com.vtosters.lite.R.string.profile : com.vtosters.lite.R.string.menu,
                milkshake() ? com.vtosters.lite.R.drawable.ic_user_circle_outline_28 : com.vtosters.lite.R.drawable.ic_menu_more_outline_28,
                milkshake() ? ProfileFragment.class : MenuFragment.class
        ));
        return tabs;
    }

    public static Map<Class<? extends FragmentImpl>, Integer> injectMap() {
        LinkedHashMap<Class<? extends FragmentImpl>, Integer> map = new LinkedHashMap<>();
        for (TabInfo tab : getTabs()) {
            map.put(tab.fragmentClass, tab.id);
        }
        return map;
    }

    @SuppressLint("RestrictedApi")
    public static void inject(BottomNavigationView navigationView) {
        Menu menu = navigationView.getMenu();
        menu.clear();
        try {
            Field field = BottomNavigationMenuView.class.getDeclaredField("J");
            field.setAccessible(true);

            Object synchronizedPool = field.get(null);

            Class<?> synchronisedPoolCls = Class.forName("androidx.core.util.Pools$SynchronizedPool");
            Method acquire = synchronisedPoolCls.getDeclaredMethod("acquire");
            if (synchronizedPool != null) {
                do {
                } while (acquire.invoke(synchronizedPool) != null);
            }

        } catch (NoSuchFieldException | IllegalAccessException | ClassNotFoundException |
                 NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }

        for (TabInfo tab : getTabs()) {
            MenuItem add = menu.add(0, tab.id, 0, tab.titleID);

            add.setIcon(new RecoloredDrawable(getResources().getDrawable(tab.iconID), getCSTDock(navigationView.getContext())));
            add.setTitle(getGlobalContext().getString(tab.titleID));
            add.setCheckable(true);
        }
        if (getBoolValue("dockbar_tab_titles", true)) {
            var menuView = (BottomNavigationMenuView) navigationView.getChildAt(0);
            for (int i = 0; i < menuView.getChildCount(); i++) {
                var item = (com.vtosters.lite.ui.bottomnavigation.BottomNavigationItemView) menuView.getChildAt(i);
                item.setStaticMode(true);
                item.setIconsMode(false);
                item.setShiftingMode(false);
                item.setTextColor(getCSTDock(item.getContext()));
            }
        }
    }

    private static void removeAllChildren(ViewGroup view) {
        for (int i = 0; i < view.getChildCount(); i++) {
            removeAllChildren((ViewGroup) view.getChildAt(i));
            view.removeAllViews();
        }
    }

    public static int injectId(String tag) {
        for (TabInfo tab : getTabs()) {
            if (tag.equals(tab.tag))
                return tab.id;
        }
        return 0;
    }

    public static void injectMenuFragment(Menu menu) {
    }

    public static void setCounter(int tabId, BottomNavigationView navigationView) {
        navigationView.a(tabId, counters(tabId));
    }

    @SuppressLint("NonConstantResourceId")
    private static CharSequence counters(int tabId) {
        if (!dockcounter()) return null;

        int val = 0;
        switch (tabId) {
            case tab_messages -> val = MenuCountersState.j();
            case tab_news -> {
                if (milkshake() && getBoolValue("newsfeed_notif", true))
                    val = MenuCountersState.k();
            }
        }

        return val > 0 ? StringUtils.a(val) : null;
    }

    public static JSONArray injectMenuJSON(JSONArray arr) {
        return arr;
    }

    public static int getItemCount() {
        return 4;
    }

    public static boolean isDockOpenAllowed(FragmentImpl fragment) {
        return isDockOpenAllowed(fragment.getClass());
    }

    public static boolean isDockOpenAllowed(Class<?> cls) {
        for (TabInfo tab : getTabs()) {
            if (tab.fragmentClass == cls)
                return false;
        }
        return true;
    }

    public static Class<?> interceptClick(int id, RightMenu rightMenu) {
        if (id == tab_menu && rightMenu != null) {
            rightMenu.a();
        }

        for (TabInfo tab : getTabs()) {
            if (id == tab.id)
                return tab.fragmentClass;
        }

        return AppsFragment.class;
    }
}

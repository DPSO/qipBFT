#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            // CBA
            "cba_ui",
            "cba_xeh",
            "cba_jr"
        };
        author = "NemesisRE";
        authors[] = {};
        authorUrl = "https://ngn.gg";
        VERSION_CONFIG;
    };
};

class CfgMods {
    class PREFIX {
        dir = "@qipBFT";
        name = "[qip] Blufor Tracking";
        picture = "A3\Ui_f\data\Logos\arma3_expansion_alpha_ca";
        hidePicture = "true";
        hideName = "true";
        actionName = "Website";
        action = CSTRING(URL);
        description = "Issue Tracker: https://github.com/quies-in-proelium/qipBFT/issues";
    };
};

#include "CfgModuleCategories.hpp"

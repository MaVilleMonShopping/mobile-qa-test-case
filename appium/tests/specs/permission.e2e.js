const { step } = require("mocha-steps");
require("should");

describe("Permissions", async () => {
    step("Should tap on Permission button and show permission popup", async() => {
        const element = await $('~Activer la permission camera');
        await element.click();

        const popup = await $('//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout');
        const isPopupVisile = await popup.isExisting();

        isPopupVisile.should.be.true();
    });

    step("Should deny permission and reopen on tap", async () => {
        const denyButton = await $('/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[3]');
        await denyButton.click();

        const element = await $('~Activer la permission camera');
        await element.click();

        const popup = await $('//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout');
        const isPopupVisile = await popup.isExisting();

        isPopupVisile.should.be.true();
    });
});
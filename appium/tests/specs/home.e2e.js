const { step } = require("mocha-steps");
require("should");

describe("Home", async () => {
    step("Should have Mobile QA Home title", async() => {
        const title = $("~Mobile QA Home");
        const isVisible = await title.isExisting();

        isVisible.should.be.true();
    });

    step("Should have Formulaire tile", async() => {
        console.log("Running dummy test");
        const formulaire = await $('~Formulaire');
        const isVisible = await formulaire.isExisting();

        isVisible.should.be.true();
    });

    step("Should have Permission Camera tile", async() => {
        console.log("Running dummy test");
        const tile = await $('~Activer la permission camera');
        const isVisible = await tile.isExisting();

        isVisible.should.be.true();
    });
});
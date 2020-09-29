import { register, init } from "svelte-i18n"

register("en", () => import("./translation/en.json"))

init({
    fallbackLocale: "en",
    initialLocale: "en",
})

export default class Words {
    count(phrase: string) : Map<string, number> {
        return Array.from(phrase
            .trim()
            .toLowerCase()
            .matchAll(/\S+/gm))
            .reduce((map, [word]) => map.set(word, (map.get(word) || 0) + 1), new Map<string, number>())
    }
}
# most of the sentences are pretty nonsensical because of the amount of words, but it works!

nouns = ["time", "year", "people", "way", "day", "man", "thing", "woman",
        "life", "child", "world", "school", "state", "family", "student", 
        "group", "country", "problem", "hand", "part", "place", "case", 
        "week", "company", "system", "program", "question", "work", "government",
         "number", "night", "point", "home", "water", "room", "mother", "area", 
         "money", "story", "fact", "month", "lot", "right", "study", "book", "eye", 
         "job", "word", "business", "issue", "side", "kind", "head", "house", 
         "service", "friend", "father", "power", "hour", "game", "line", "end", "member",
         "law", "car", "city", "community", "name", "president", "team", "minute", "idea", 
         "kid", "body", "information", "back", "parent", "face", "others", "level", "office",
         "door", "health", "person", "art", "war", "history", "party", "result", "change", "morning",
         "reason", "research", "girl", "guy", "moment", "air", "teacher", "force", "education"]

adjectives = ["other", "new", "good", "high", "old", "great", "big", "American", 
             "small", "large", "national", "young", "different", "black", "long", 
             "little", "important", "political", "bad", "white", "real", "best", 
             "right", "social", "only", "public", "sure", "low", "early", "able", 
             "human", "local", "late", "hard", "major", "better", "economic", "strong", 
             "possible", "whole", "free", "military", "true", "federal", "international", 
             "full", "special", "easy", "clear", "recent", "certain", "personal", "open", 
             "red", "difficult", "available", "likely", "short", "single", "medical", "current", 
             "wrong", "private", "past", "foreign", "fine", "common", "poor", "natural", 
             "significant", "similar", "hot", "dead", "central", "happy", "serious", "ready", 
             "simple", "left", "physical", "general", "environmental", "financial", "blue", 
             "democratic", "dark", "various", "entire", "close", "legal", "religious", "cold", 
             "final", "main", "green", "nice", "huge", "popular", "traditional", "cultural"]

verbs = ["is", "has", "does", "says", "goes", "can", "gets", "would", "makes", "knows", "will", 
        "thinks", "takes", "sees", "comes", "could", "wants", "looks", "uses", "finds", "gives", 
        "tells", "works", "may", "should", "calls", "tries", "asks", "needs", "feels", "becomes", 
        "leaves", "puts", "means", "keeps", "lets", "begins", "seems", "helps", "talks", "turns", 
        "starts", "might", "shows", "hears", "plays", "runs", "moves", "likes", "lives", "believes", 
        "holds", "brings", "happens", "musts", "writes", "provides", "sits", "stands", "loses", "pays", 
        "meets", "includes", "continues", "sets", "learns", "changes", "leads", "understands", "watches", 
        "follows", "stops", "creates", "speaks", "reads", "allows", "adds", "spends", "grows", "opens", 
        "walks", "wins", "offers", "remembers", "loves", "considers", "appears", "buys", "waits", "serves",
         "dies", "sends", "expects", "builds", "stays", "falls", "cuts", "reaches", "kills", "remains"]

adverbs = ["up", "so", "out", "just", "now", "how", "then", "more", "also", "here", "well", "only", "very", 
          "even", "back", "there", "down", "still", "in", "as", "to", "when", "never", "really", "most", "on", 
          "why", "about", "over", "again", "where", "right", "off", "always", "today", "all", "far", "long", 
          "away", "yet", "often", "ever", "however", "almost", "later", "much", "once", "least", "ago", "together", 
          "around", "already", "enough", "both", "maybe", "actually", "probably", "home", "quickly", "perhaps", 
          "little", "else", "sometimes", "finally", "less", "better", "early", "especially", "either", "quite", 
          "simply", "nearly", "soon", "certainly", "quickly", "no", "recently", "before", "usually", "thus", 
          "exactly", "hard", "particularly", "pretty", "forward", "ok", "clearly", "indeed", "rather", "that", 
          "tonight", "close", "suddenly", "best", "instead", "ahead", "fast", "alone", "eventually", "directly"]

words = File.read('madlib.txt').split
words.map! do |word|
  case word
  when 'noun'
    nouns.sample
  when 'adjective'
    adjectives.sample
  when 'verb'
    verbs.sample
  when 'adverb'
    adverbs.sample
  else
    word
  end
end

puts words.join(' ') + '.'


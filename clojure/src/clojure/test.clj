(ns
  ^{:author tak}
  clojure.test)

(println (< 1 2 3))
(println (< 1 4 3 2))
(println "dasdasd")
(str "yoda " "luke " "darth ")
(if true (println "true"))
(if (> 1 2 ) (println "True  jj"))
(if false (println "true") (println "false"))

(println (first()))
(if 0 (println "true"))
(if nil (println "true"))
(if "" (println "true"))

(println (list 1 2 3))

(println (first '(:r2d3 :c3po)))
(println (last '(:r2d3 :c3po)))
(println (rest '(:r2d3 :c3po)))
(println (cons :battle-droid '(:r2d3 :c3po)))


(println (first [:hutt :wookie :ewok]))
(println (nth [:hutt :wookie :ewok] 2))
(println (nth [:hutt :wookie :ewok] 0))
(println (concat [:hutt :wookie] [:sdsdss :ewok] ))


(println #{:x-wing :y-wing :tie-fighter})

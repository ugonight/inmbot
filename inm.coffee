word = [
    '114514'
    '889464'
    '0721'
    '810'
    '931'
    '1919'
    '364364'
    '169'
    '4545'
    ]
wordc = [0...word.length]
num = ['0','1','2','3','4','5','6','7','8','9']

module.exports = (robot) ->
    robot.respond /114514/i, (msg) ->
        msg.send 114514 + "ゲームスタート！"
        
        i = true
        log = ''
        for k in [0...word.length]
            wordc[k] = 0
        a = ''
        count = 0

        while i
            a = msg.random num

            log = log + a
            count = count + 1

            for j in [0...word.length]
                if a is word[j][wordc[j]]
                     wordc[j] = wordc[j] + 1
                     if wordc[j] > word[j].length-1
                        i = false
                        msg.send log
                        msg.send "あなたは" + word[j] + "で" + count + "回抜きました！イキスギィ！"
                else
                    wordc[j] = 0

            if count > 114514
                i = false
                msg.send log
                msg.send "あなたはテクノブレイクしてしまいました。残念…！"

word = '114514'
num = ['0','1','2','3','4','5','6','7','8','9']

module.exports = (robot) ->
    robot.respond /114514/i, (msg) ->
        msg.send 114514 + "ゲームスタート！"
        
        i = true
        log = ''
        c = 0
        a = ''
        count = 0

        while i
            a = msg.random num
            if a is word[c]
                c = c + 1
                if c > word.length-1
                    i = false
            else
                c = 0
            log = log + a
            count = count + 1
        msg.send log
        msg.send "あなたは" + count + "回抜きました！イキスギィ！"
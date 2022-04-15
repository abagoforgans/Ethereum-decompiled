contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2325]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct articles;
uint256 numberOfArticles;

function getNumberOfArticles() {
    return numberOfArticles
}

function articles(uint256 arg1) {
    mem[320] = articles[arg1][3].field_0
    idx = 320
    s = 0
    while articles[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = articles[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32) + 320] = articles[arg1][4].length
    mem[articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32) + 352] = articles[arg1][4].field_0
    idx = articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32) + 352
    s = 0
    while articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32) + articles[arg1][4].length + 352 > idx + 32:
        mem[idx + 32] = articles[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return articles[arg1].field_0, 
           articles[arg1].field_256,
           articles[arg1].field_512,
           Array(len=articles[arg1][3].length, data=mem[320 len articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32) + articles[arg1][4].length + (floor32(articles[arg1][4].length - 1) + -articles[arg1][4].length + 32 % 32) + 32]),
           articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32) + 224,
           articles[arg1].field_1280
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_d2609515(?) {
    numberOfArticles++
    articles[stor2].field_0 = numberOfArticles
    articles[stor2].field_256 = msg.sender
    articles[stor2].field_512 = 0
    articles[stor2].field_768 = 0
    articles[stor2][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    articles[stor2][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    articles[stor2].field_1280 = arg3
    emit 0xe6dcabaf: Array(len=arg1.length, data=arg1[all]), arg3, numberOfArticles, msg.sender
}

function sub_1cc4baa8(?) payable {
    require numberOfArticles > 0
    require arg1 > 0
    require arg1 <= numberOfArticles
    require not articles[arg1].field_512
    require articles[arg1].field_256 != msg.sender
    require msg.value == articles[arg1].field_1280
    articles[arg1].field_512 = msg.sender
    call articles[arg1].field_256 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[192] = articles[arg1][3].field_0
    idx = 192
    s = 0
    while articles[arg1][3].length + 192 > idx + 32:
        mem[idx + 32] = articles[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x1022115f: Array(len=articles[arg1][3].length, data=mem[192 len articles[arg1][3].length + (floor32(articles[arg1][3].length - 1) + -articles[arg1][3].length + 32 % 32)]), articles[arg1].field_1280, arg1, articles[arg1].field_256, articles[arg1].field_512
}

function sub_7f6be3da(?) {
    if 0 == numberOfArticles:
        return ''
    idx = 1
    s = 0
    while idx <= numberOfArticles:
        mem[0] = idx
        mem[32] = 1
        if articles[idx].field_512:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 1
        require s < numberOfArticles
        mem[(32 * s) + 224] = articles[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 256 < (32 * numberOfArticles) + 224:
        mem[(32 * numberOfArticles) + 224] = s
        t = 0
        while t < s:
            require t < numberOfArticles
            require t < s
            mem[(32 * numberOfArticles) + (32 * t) + 256] = mem[(32 * t) + 224]
            t = t + 1
            continue 
        mem[(32 * numberOfArticles) + (32 * s) + 320 len floor32(s)] = mem[(32 * numberOfArticles) + 256 len floor32(s)]
        return Array(len=s, data=mem[(32 * numberOfArticles) + 256 len floor32(s)], mem[(32 * numberOfArticles) + (32 * s) + floor32(s) + 320 len (32 * s) - floor32(s)]), 
    mem[(32 * s) + 256] = s
    t = 0
    while t < s:
        require t < numberOfArticles
        require t < s, None
        mem[(32 * s) + (32 * t) + 288] = mem[(32 * t) + 224]
        t = t + 1
        continue 
    mem[(64 * s) + 288] = 32
    mem[(64 * s) + 320] = s, None
    mem[(64 * s) + 352 len floor32(s)] = mem[(32 * s) + 288 len floor32(s)]
    return memory
      from (64 * s) + 288
       len (32 * s, None) + 64
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor6;
uint256 stor27;

function _fallback() payable {
    stor4 = 1
    stor6 = 1
    stor27 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[3118 len 32]
    stor2 = code.data[3150 len 32]
    return code.data[116 len 3002]
}



// =====================  Runtime code  =====================


address stor0;
uint256 feeNewThread;
uint256 feeReplyThread;
array of struct threads;
uint256 indexThreads;
array of struct replies;
uint256 indexReplies;
array of uint256 lastThreads;
uint256 indexLastThreads;

function lastThreads(uint256 arg1) {
    require arg1 < 20
    return lastThreads[arg1]
}

function feeNewThread() {
    return feeNewThread
}

function replies(uint256 arg1) {
    mem[288] = replies[arg1].field_0
    idx = 288
    s = 0
    while replies[arg1].length + 288 > idx + 32:
        mem[idx + 32] = replies[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[replies[arg1].length + (floor32(replies[arg1].length - 1) + -replies[arg1].length + 32 % 32) + 288] = replies[arg1][1].length
    mem[replies[arg1].length + (floor32(replies[arg1].length - 1) + -replies[arg1].length + 32 % 32) + 320] = replies[arg1][1].field_0
    idx = replies[arg1].length + (floor32(replies[arg1].length - 1) + -replies[arg1].length + 32 % 32) + 320
    s = 0
    while replies[arg1].length + (floor32(replies[arg1].length - 1) + -replies[arg1].length + 32 % 32) + replies[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = replies[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=replies[arg1].length, data=mem[288 len replies[arg1].length + (floor32(replies[arg1].length - 1) + -replies[arg1].length + 32 % 32) + replies[arg1][1].length + (floor32(replies[arg1][1].length - 1) + -replies[arg1][1].length + 32 % 32) + 32]), 
           replies[arg1].length + (floor32(replies[arg1].length - 1) + -replies[arg1].length + 32 % 32) + 192,
           replies[arg1].field_512,
           replies[arg1].field_768,
           replies[arg1].field_1024
}

function feeReplyThread() {
    return feeReplyThread
}

function indexReplies() {
    return indexReplies
}

function indexLastThreads() {
    return indexLastThreads
}

function indexThreads() {
    return indexThreads
}

function threads(uint256 arg1) {
    mem[288] = threads[arg1].field_0
    idx = 288
    s = 0
    while threads[arg1].length + 288 > idx + 32:
        mem[idx + 32] = threads[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[threads[arg1].length + (floor32(threads[arg1].length - 1) + -threads[arg1].length + 32 % 32) + 288] = threads[arg1][1].length
    mem[threads[arg1].length + (floor32(threads[arg1].length - 1) + -threads[arg1].length + 32 % 32) + 320] = threads[arg1][1].field_0
    idx = threads[arg1].length + (floor32(threads[arg1].length - 1) + -threads[arg1].length + 32 % 32) + 320
    s = 0
    while threads[arg1].length + (floor32(threads[arg1].length - 1) + -threads[arg1].length + 32 % 32) + threads[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = threads[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=threads[arg1].length, data=mem[288 len threads[arg1].length + (floor32(threads[arg1].length - 1) + -threads[arg1].length + 32 % 32) + threads[arg1][1].length + (floor32(threads[arg1][1].length - 1) + -threads[arg1][1].length + 32 % 32) + 32]), 
           threads[arg1].length + (floor32(threads[arg1].length - 1) + -threads[arg1].length + 32 % 32) + 192,
           threads[arg1].field_512,
           threads[arg1].field_768,
           threads[arg1].field_1024
}

function _fallback() payable {
    revert
}

function SetFees(uint256 arg1, uint256 arg2) {
    require stor0 == msg.sender
    feeNewThread = arg1
    feeReplyThread = arg2
}

function withdraw(uint256 arg1) {
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createThread(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.value >= feeNewThread
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    threads[stor4][].field_0 = Array(len=arg1.length, data=arg1[all])
    threads[stor4][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    threads[stor4].field_512 = 0
    threads[stor4].field_768 = 0
    threads[stor4].field_1024 = block.timestamp
    require indexLastThreads < 20
    lastThreads[stor27] = indexThreads
    indexLastThreads = mulmod(indexLastThreads, 1, 20)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit newThreadEvent(indexThreads, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 480 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160, block.timestamp);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
        emit newThreadEvent(indexThreads, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 480 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160, block.timestamp);
    indexThreads++
}

function replyThread(uint256 arg1, string arg2, string arg3) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.value >= feeReplyThread
    require arg1 < indexThreads
    require arg1 > 0
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 320
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = ceil32(arg2.length) + 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = block.timestamp
    replies[stor6][].field_0 = Array(len=arg2.length, data=arg2[all])
    replies[stor6][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    replies[stor6].field_512 = arg1
    replies[stor6].field_768 = 0
    replies[stor6].field_1024 = block.timestamp
    if threads[arg1].field_768:
        replies[stor3[arg1].field_512].field_768 = indexReplies
        mem[0] = arg1
        mem[32] = 3
    else:
        mem[0] = arg1
        mem[32] = 3
        threads[arg1].field_768 = indexReplies
    threads[arg1].field_512 = indexReplies
    idx = 0
    while uint8(idx) < 20:
        if lastThreads[uint8(idx)] != arg1:
            if 19 == uint8(idx):
                require indexLastThreads < 20
                lastThreads[stor27] = arg1
                indexLastThreads = mulmod(indexLastThreads, 1, 20)
            idx = idx + 1
            continue 
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = indexReplies
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = block.timestamp
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = 160
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg2.length
        idx = 0
        while idx < arg2.length:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + idx + 512] = mem[idx + 128]
            idx = idx + 32
            continue 
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg2.length + 192
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg3.length
            idx = 0
            while idx < mem[ceil32(arg2.length) + 128]:
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + idx + 544] = mem[ceil32(arg2.length) + idx + 160]
                idx = idx + 32
                continue 
            if not arg3.length % 32:
                emit newReplyEvent(uint256 rg1, uint256 rg2, string rg3, string rg4, uint256 rg5):
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len arg2.length + 192],
                                   arg3.length,
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 544 len arg3.length],
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                emit newReplyEvent(uint256 rg1, uint256 rg2, string rg3, string rg4, uint256 rg5):
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len arg2.length + 192],
                                   arg3.length,
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 544 len floor32(arg3.length) + 32],
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = floor32(arg2.length) + 224
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
            idx = 0
            while idx < mem[ceil32(arg2.length) + 128]:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + idx + 576] = mem[ceil32(arg2.length) + idx + 160]
                idx = idx + 32
                continue 
            if not arg3.length % 32:
                emit newReplyEvent(uint256 rg1, uint256 rg2, string rg3, string rg4, uint256 rg5):
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg2.length) + 224],
                                   arg3.length,
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 576 len arg3.length],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                emit newReplyEvent(uint256 rg1, uint256 rg2, string rg3, string rg4, uint256 rg5):
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg2.length) + 224],
                                   arg3.length,
                                   mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 576 len floor32(arg3.length) + 32],
        indexReplies++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    var47001 = ceil32(arg3.length)
    if not arg3.length % 32:
        emit newReplyEvent(indexReplies, arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 192, block.timestamp);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
        emit newReplyEvent(indexReplies, arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 192, block.timestamp);
    indexReplies++
}



}

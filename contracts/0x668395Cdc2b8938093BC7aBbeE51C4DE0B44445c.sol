contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 1692]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balanceOf;
array of struct dataOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function dataOf(address arg1) {
    mem[192] = dataOf[arg1].field_0
    idx = 192
    s = 0
    while dataOf[arg1].length + 192 > idx + 32:
        mem[idx + 32] = dataOf[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=dataOf[arg1].length, data=mem[192 len dataOf[arg1].length + (floor32(dataOf[arg1].length - 1) + -dataOf[arg1].length + 32 % 32)]), 
           dataOf[arg1].field_256
}

function sub_37e18b94(?) {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    if msg.value + balanceOf[address(msg.sender)] >= 10^18:
        dataOf[address(msg.sender)][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
        dataOf[address(msg.sender)].field_256 = block.timestamp
        emit 0x5207dfaa: msg.sender, Array(len=calldata.size, data=call.data[0 len calldata.size])
}

function rollback() {
    require block.timestamp <= dataOf[address(msg.sender)].field_256 + (24 * 3600)
    dataOf[address(msg.sender)].field_0 = 0
    if 31 < dataOf[address(msg.sender)].length:
        idx = 0
        while dataOf[address(msg.sender)].length + 31 / 32 > idx:
            dataOf[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    dataOf[address(msg.sender)].field_256 = 0
    emit 0xa7428bdc: msg.sender
    call msg.sender with:
       value 9 * balanceOf[address(msg.sender)] / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function commit(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    balanceOf[address(msg.sender)] += msg.value
    if msg.value + balanceOf[address(msg.sender)] < 10^18:
        return 0
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 160] = block.timestamp
    dataOf[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    dataOf[address(msg.sender)].field_256 = block.timestamp
    mem[ceil32(arg1.length) + 192] = msg.sender
    mem[ceil32(arg1.length) + 224] = 64
    mem[ceil32(arg1.length) + 256] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 288] = mem[128]
        mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x5207dfaa: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length])
    return 1
}



}

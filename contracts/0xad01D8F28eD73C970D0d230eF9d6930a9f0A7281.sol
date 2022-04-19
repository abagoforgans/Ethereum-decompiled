contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = 10^16
    stor3 = 0
    return code.data[74 len 2352]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
uint256 price;
uint256 numLoveItems;

function owner() {
    return owner
}

function getPrice() {
    return price
}

function getNumLoveItems() {
    return numLoveItems
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
    emit EvNewPrice(block.number, arg1);
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function donateToLovers(bytes32 arg1) payable {
    require msg.value > 0
    require stor1[arg1].field_0 > 0
    call stor1[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 0
}

function addLovers(bytes32 arg1, string arg2, string arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require arg2.length < 250
    require arg3.length < 100
    require msg.value >= price
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    stor1[arg1].field_0 = msg.sender
    stor1[arg1].field_256 = block.number
    stor1[arg1].field_512 = block.timestamp
    stor1[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    numLoveItems++
    call owner with:
       value price wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit EvLoveItemAdded(block.number, block.timestamp, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160, arg1, msg.sender);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
        emit EvLoveItemAdded(block.number, block.timestamp, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160, arg1, msg.sender);
}

function getLovers(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    require stor1[arg1].field_256 > 0
    mem[32] = 1
    mem[160] = stor1[arg1][3].length
    mem[192] = stor1[arg1][3].field_0
    idx = 192
    s = 0
    while stor1[arg1][3].length + 160 > idx:
        mem[idx + 32] = stor1[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 224
    mem[ceil32(stor1[arg1][3].length) + 192] = stor1[arg1][4].length
    mem[0] = sha3(arg1, 1) + 4
    mem[ceil32(stor1[arg1][3].length) + 224] = stor1[arg1][4].field_0
    idx = ceil32(stor1[arg1][3].length) + 224
    s = 0
    while ceil32(stor1[arg1][3].length) + stor1[arg1][4].length + 192 > idx:
        mem[idx + 32] = stor1[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 224] = stor1[arg1].field_0
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 256] = stor1[arg1].field_256
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 288] = stor1[arg1].field_512
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 320] = 160
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 384] = stor1[arg1][3].length
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 416 len ceil32(stor1[arg1][3].length)] = mem[192 len ceil32(stor1[arg1][3].length)]
    mem[ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 352] = stor1[arg1][3].length + 192
    mem[stor1[arg1][3].length + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 416] = stor1[arg1][4].length
    mem[stor1[arg1][3].length + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448 len ceil32(stor1[arg1][4].length)] = mem[ceil32(stor1[arg1][3].length) + 224 len ceil32(stor1[arg1][4].length)]
    if not stor1[arg1][4].length % 32:
        return stor1[arg1].field_0, 
               stor1[arg1].field_256,
               stor1[arg1].field_512,
               Array(len=stor1[arg1][3].length, data=mem[192 len ceil32(stor1[arg1][3].length)], mem[(2 * ceil32(stor1[arg1][3].length)) + ceil32(stor1[arg1][4].length) + 416 len stor1[arg1][3].length + -ceil32(stor1[arg1][3].length) + 32], mem[ceil32(stor1[arg1][3].length) + 224 len stor1[arg1][4].length]),
               stor1[arg1][3].length + 192
    mem[floor32(stor1[arg1][4].length) + stor1[arg1][3].length + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448] = mem[floor32(stor1[arg1][4].length) + stor1[arg1][3].length + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + -stor1[arg1][4].length % 32 + 480 len stor1[arg1][4].length % 32]
    return stor1[arg1].field_0, 
           stor1[arg1].field_256,
           stor1[arg1].field_512,
           Array(len=stor1[arg1][3].length, data=mem[192 len ceil32(stor1[arg1][3].length)], mem[(2 * ceil32(stor1[arg1][3].length)) + ceil32(stor1[arg1][4].length) + 416 len stor1[arg1][3].length + -ceil32(stor1[arg1][3].length) + 32], mem[ceil32(stor1[arg1][3].length) + 224 len ceil32(stor1[arg1][4].length)], mem[ceil32(stor1[arg1][3].length) + (2 * ceil32(stor1[arg1][4].length)) + stor1[arg1][3].length + 448 len floor32(stor1[arg1][4].length) + -ceil32(stor1[arg1][4].length) + 32]),
           stor1[arg1][3].length + 192
}



}

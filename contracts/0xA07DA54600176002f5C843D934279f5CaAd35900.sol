contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
array of struct stor1;
uint256 stor3;
uint256 stor4;
mapping of uint8 stor99;

function length() {
    return stor1.length
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3 = arg1
}

function setDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_79e2f9a5(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 < stor1.length
    require stor1[arg1].field_0
    address(stor1[arg1].field_768) = arg2
}

function transfer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < stor1.length
    require stor1[arg1].field_0
    require msg.sender == address(stor1[arg1].field_768)
    address(stor1[arg1].field_768) = arg2
}

function withdrawAll() {
    require msg.sender == owner
    require eth.balance(this.address) <= eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2f1158b4(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    require arg1 < stor1.length
    require stor1[arg1].field_0
    uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function sub_36423f54(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg1 < stor1.length
    require stor1[arg1].field_0
    require msg.sender == address(stor1[arg1].field_768)
    uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function donate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value > 0
    require arg1 < stor1.length
    require stor1[arg1].field_0
    require stor4
    call address(stor1[arg1].field_768) with:
       value msg.value - (msg.value / stor4) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor1[arg1].field_1024) += msg.value
}

function sub_d974dbce(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < stor1.length
    require stor1[arg1].field_0
    stor1[arg1].field_0 = 0
    mem[96] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 96
    s = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 96] = 2
    stor[sha3(mem[96 len stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 32])] = 0
    bool(stor1[arg1].field_256) = 0
    uint255(stor1[arg1].field_257) = 0
    Mask(248, 0, stor1[arg1].field_264) = mem[128 len 31]
    idx = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    bool(stor1[arg1].field_512) = 0
    uint255(stor1[arg1].field_513) = 0
    Mask(248, 0, stor1[arg1].field_520) = mem[160 len 31]
    idx = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((5 * arg1) + ('name', 'stor1', 1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    address(stor1[arg1].field_768) = 0
    uint256(stor1[arg1].field_1024) = 0
}

function remove(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    require stor1[arg1].field_0
    require msg.sender == address(stor1[arg1].field_768)
    stor1[arg1].field_0 = 0
    mem[96] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 96
    s = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 96] = 2
    stor[sha3(mem[96 len stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 32])] = 0
    bool(stor1[arg1].field_256) = 0
    uint255(stor1[arg1].field_257) = 0
    Mask(248, 0, stor1[arg1].field_264) = mem[128 len 31]
    idx = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    bool(stor1[arg1].field_512) = 0
    uint255(stor1[arg1].field_513) = 0
    Mask(248, 0, stor1[arg1].field_520) = mem[160 len 31]
    idx = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((5 * arg1) + ('name', 'stor1', 1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    address(stor1[arg1].field_768) = 0
    uint256(stor1[arg1].field_1024) = 0
}

function sub_a02fbe73(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    require not stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = 0
    stor1.length++
    stor1[stor1.length].field_0 = 1
    uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    address(stor1[stor1.length].field_768) = msg.sender
    uint256(stor1[stor1.length].field_1024) = 0
    return stor1.length
}

function add(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.value >= stor3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    require not stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = 0
    stor1.length++
    stor1[stor1.length].field_0 = 1
    uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    address(stor1[stor1.length].field_768) = msg.sender
    uint256(stor1[stor1.length].field_1024) = 0
    return stor1.length
}

function sub_197c6a71(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    require arg1 < stor1.length
    require stor1[arg1].field_0
    mem[64] = ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[0] = (5 * arg1) + sha3(1) + 1
    mem[ceil32(arg2.length) + 160] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _74 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160])
    mem[_74 + ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = 2
    stor[sha3(mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len _74 + 32])] = 0
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = 2
    stor[mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 1
    uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function rename(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg1 < stor1.length
    require stor1[arg1].field_0
    require msg.sender == address(stor1[arg1].field_768)
    mem[64] = ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[0] = (5 * arg1) + sha3(1) + 1
    mem[ceil32(arg2.length) + 160] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _74 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160])
    mem[_74 + ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = 2
    stor[sha3(mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len _74 + 32])] = 0
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = 2
    stor[mem[ceil32(arg2.length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 1
    uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function get(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    require arg1 < stor1.length
    require stor1[arg1].field_0
    mem[256] = bool(stor1[arg1].field_0)
    mem[416] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[448] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 448
    s = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 416 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[288] = 416
    mem[64] = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 480
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 448] = stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length
    mem[0] = (5 * arg1) + sha3(1) + 2
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 480] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 2)].field_0)
    idx = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 480
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length + 448 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[320] = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 448
    mem[352] = address(stor1[arg1].field_768)
    mem[384] = uint256(stor1[arg1].field_1024)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 544] = address(stor1[arg1].field_768)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 576] = uint256(stor1[arg1].field_1024)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 480] = 128
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 608] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 640 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)] = mem[448 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)]
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 512] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 160
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 640] = stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 672 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length)] = mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 480 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length)]
    if not stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length % 32:
        return Array(len=stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[448 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 640 len stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 32]), 
               stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 160,
               address(stor1[arg1].field_768),
               uint256(stor1[arg1].field_1024)
    mem[floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 672] = mem[floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + -stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length % 32 + 704 len stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length % 32]
    return Array(len=stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[448 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + 640 len floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 2].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 64]), 
           stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 160,
           address(stor1[arg1].field_768),
           uint256(stor1[arg1].field_1024)
}



}

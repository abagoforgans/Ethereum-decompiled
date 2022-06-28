contract main {




// =====================  Runtime code  =====================


#
#  - get(uint256 arg1)
#  - sub_ae100d08(?)
#
const balance = eth.balance(this.address)


array of struct stor0;
mapping of uint256 stor1;
address owner;
uint256 price;
uint256 feeDivisor;
address stor6;
uint256 stor6;
address stor7;
array of uint256 stor8;
mapping of uint256 stor11;
mapping of uint8 stor99;

function length() {
    return stor0.length
}

function owner() {
    return owner
}

function feeDivisor() {
    return feeDivisor
}

function price() {
    return price
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
    price = arg1
}

function setFeeDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    feeDivisor = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f9a07676(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    address(stor0[arg1].field_0) = arg2
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

function sub_40d86101(?) {
    require calldata.size - 4 >= 64
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    require msg.sender == address(stor0[arg1].field_0)
    stor1[address(msg.sender)]--
    stor1[address(arg2)]++
    address(stor0[arg1].field_0) = arg2
    Mask(96, 0, stor0[arg1].field_0) = 0
}

function sub_2f1158b4(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 3)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function sub_d058de9f(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 4)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function sub_36423f54(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    require msg.sender == address(stor0[arg1].field_0)
    uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 3)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function sub_55140fbb(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    require msg.sender == address(stor0[arg1].field_0)
    uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 4)][].field_0) = Array(len=arg2.length, data=arg2[all])
    Mask(96, 0, stor0[arg1].field_0) = 0
}

function donate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value > 0
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    require stor0[arg1].field_0
    require feeDivisor
    call address(stor0[arg1].field_0) with:
       value msg.value - (msg.value / feeDivisor) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor0[arg1].field_0) += msg.value
}

function sub_56572bfe(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    stor0[arg1].field_0 = 0
    mem[96] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_0)
    idx = 96
    s = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 96] = 2
    stor[sha3(mem[96 len stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 32])] = 0
    stor1[address(stor0[arg1].field_0)]--
    bool(stor0[arg1].field_0) = 0
    uint255(stor0[arg1].field_0) = 0
    Mask(248, 0, stor0[arg1].field_0) = mem[128 len 31]
    idx = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_0) = 0
        idx = idx + 1
        continue 
    bool(stor0[arg1].field_0) = 0
    uint255(stor0[arg1].field_0) = 0
    Mask(248, 0, stor0[arg1].field_0) = mem[160 len 31]
    idx = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) - 3].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * arg1) + ('name', 'stor0', 0) - 3)].field_0) = 0
        idx = idx + 1
        continue 
    address(stor0[arg1].field_0) = 0
    uint256(stor0[arg1].field_0) = 0
}

function remove(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    require msg.sender == address(stor0[arg1].field_0)
    stor0[arg1].field_0 = 0
    mem[96] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_0)
    idx = 96
    s = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 96] = 2
    stor[sha3(mem[96 len stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 32])] = 0
    stor1[address(stor0[arg1].field_0)]--
    bool(stor0[arg1].field_0) = 0
    uint255(stor0[arg1].field_0) = 0
    Mask(248, 0, stor0[arg1].field_0) = mem[128 len 31]
    idx = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_0) = 0
        idx = idx + 1
        continue 
    bool(stor0[arg1].field_0) = 0
    uint255(stor0[arg1].field_0) = 0
    Mask(248, 0, stor0[arg1].field_0) = mem[160 len 31]
    idx = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) - 3].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * arg1) + ('name', 'stor0', 0) - 3)].field_0) = 0
        idx = idx + 1
        continue 
    address(stor0[arg1].field_0) = 0
    uint256(stor0[arg1].field_0) = 0
}

function getByOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)]:
        if stor1[address(arg1)]:
            idx = 1
            while idx <= stor0.length:
                require idx < stor0.length
                mem[0] = 0
                if stor0[idx].field_0:
                    require idx < stor0.length
                    mem[0] = 0
                    if address(stor0[idx].field_1024) == arg1:
                        require 0 < stor1[address(arg1)]
                        mem[128] = idx
                idx = idx + 1
                continue 
            mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = mem[128 len floor32(stor1[address(arg1)])]
            return Array(len=stor1[address(arg1)], data=mem[128 len floor32(stor1[address(arg1)])], mem[(32 * stor1[address(arg1)]) + floor32(stor1[address(arg1)]) + 192 len (32 * stor1[address(arg1)]) - floor32(stor1[address(arg1)])]), 
        mem[(32 * stor1[address(arg1)]) + 128] = 32
        mem[(32 * stor1[address(arg1)]) + 160] = stor1[address(arg1)]
        mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = mem[128 len floor32(stor1[address(arg1)])]
    else:
        mem[128 len 32 * stor1[address(arg1)]] = code.data[15714 len 32 * stor1[address(arg1)]]
        if stor1[address(arg1)]:
            idx = 1
            while idx <= stor0.length:
                require idx < stor0.length
                mem[0] = 0
                if stor0[idx].field_0:
                    require idx < stor0.length
                    mem[0] = 0
                    if address(stor0[idx].field_1024) == arg1:
                        require 0 < stor1[address(arg1)]
                        mem[128] = idx
                idx = idx + 1
                continue 
            mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = mem[128 len floor32(stor1[address(arg1)])]
            return Array(len=stor1[address(arg1)], data=mem[128 len floor32(stor1[address(arg1)])], mem[(32 * stor1[address(arg1)]) + floor32(stor1[address(arg1)]) + 192 len (32 * stor1[address(arg1)]) - floor32(stor1[address(arg1)])]), 
        mem[(32 * stor1[address(arg1)]) + 128] = 32
        mem[(32 * stor1[address(arg1)]) + 160] = stor1[address(arg1)]
        mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = code.data[15714 len floor32(stor1[address(arg1)])]
    return memory
      from (32 * stor1[address(arg1)]) + 128
       len (96 * stor1[address(arg1)]) + 64
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
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    mem[64] = ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length
    mem[0] = (6 * arg1) + sha3(0) - 5
    mem[ceil32(arg2.length) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _74 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160])
    mem[_74 + ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160] = 2
    stor[sha3(mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160 len _74 + 32])] = 0
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160] = 2
    stor[mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 1
    uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 5)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function rename(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg1 - 1 < stor0.length
    require stor0[arg1].field_0
    require msg.sender == address(stor0[arg1].field_0)
    mem[64] = ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length
    mem[0] = (6 * arg1) + sha3(0) - 5
    mem[ceil32(arg2.length) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) - 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _74 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160])
    mem[_74 + ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160] = 2
    stor[sha3(mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160 len _74 + 32])] = 0
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + 160] = 2
    stor[mem[ceil32(arg2.length) + ceil32(stor[(6 * arg1) + ('name', 'stor0', 0) - 5].length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 1
    uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) - 5)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function sub_68e0d6c9(?) {
    require calldata.size - 4 >= 96
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
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 2
    require not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 2
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = 1
    stor1[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = 0
    stor0.length++
    stor0[stor0.length].field_0 = 1
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0) = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    address(stor0[stor0.length].field_1024) = msg.sender
    Mask(96, 0, stor0[stor0.length].field_1184) = 0
    uint256(stor0[stor0.length].field_1280) = 0
    return (stor0.length + 1)
}

function sub_f034d6b1(?) payable {
    require calldata.size - 4 >= 96
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
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    require msg.value >= price
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 2
    require not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 2
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = 1
    stor1[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = 0
    stor0.length++
    stor0[stor0.length].field_0 = 1
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0) = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    address(stor0[stor0.length].field_1024) = msg.sender
    Mask(96, 0, stor0[stor0.length].field_1184) = 0
    uint256(stor0[stor0.length].field_1280) = 0
    return (stor0.length + 1)
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor7:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor7 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor8.length) = 0
            uint255(stor8.length.field_1) = 11
            Mask(248, 0, stor8.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor8.length + 31 / 32 > idx:
                uint256(stor8[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor7 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor8.length) = 0
                uint255(stor8.length.field_1) = 12
                Mask(248, 0, stor8.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint256(stor8[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor7 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor8.length) = 0
                    uint255(stor8.length.field_1) = 9
                    Mask(248, 0, stor8.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint256(stor8[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor7 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor7 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor7 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor7 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor8.length) = 0
                        uint255(stor8.length.field_1) = 11
                        Mask(248, 0, stor8.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor8[idx].field_0) = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor7):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor7 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor8.length) = 0
                uint255(stor8.length.field_1) = 11
                Mask(248, 0, stor8.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint256(stor8[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor7 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor8.length) = 0
                    uint255(stor8.length.field_1) = 12
                    Mask(248, 0, stor8.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint256(stor8[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor7 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor8.length) = 0
                        uint255(stor8.length.field_1) = 9
                        Mask(248, 0, stor8.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor8[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor7 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor7 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor7 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor7 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor8.length) = 0
                            uint255(stor8.length.field_1) = 11
                            Mask(248, 0, stor8.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint256(stor8[idx].field_0) = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor7)
    call stor7.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor6) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor7)
        call stor7.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(address(stor6))
    staticcall address(stor6).cbAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require stor11[arg1] > 0
    idx = 2
    while idx < 42:
        require idx < arg2.length
        require idx + 1 < arg2.length
        idx = idx + 2
        continue 
    require stor11[arg1] - 1 < stor0.length
    require stor0[stor11[arg1]].field_0
    address(stor0[stor11[arg1]].field_0) = 0
    Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
    emit 0x7c6543bd: stor11[arg1], 0
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not stor7:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor7 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor8.length) = 0
            uint255(stor8.length.field_1) = 11
            Mask(248, 0, stor8.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor8.length + 31 / 32 > idx:
                uint256(stor8[idx].field_0) = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor7)
            call stor7.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor6) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor7)
                call stor7.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
            require ext_code.size(address(stor6))
            staticcall address(stor6).cbAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            require stor11[arg1] > 0
            idx = 2
            while idx < 42:
                require idx < arg2.length
                require idx + 1 < arg2.length
                idx = idx + 2
                continue 
            require stor11[arg1] - 1 < stor0.length
            require stor0[stor11[arg1]].field_0
            address(stor0[stor11[arg1]].field_0) = 0
            Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
            emit 0x7c6543bd: stor11[arg1], 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor7 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor8.length) = 0
                uint255(stor8.length.field_1) = 12
                Mask(248, 0, stor8.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint256(stor8[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor7)
                call stor7.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(stor6) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor7)
                    call stor7.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                require ext_code.size(address(stor6))
                staticcall address(stor6).cbAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                require stor11[arg1] > 0
                idx = 2
                while idx < 42:
                    require idx < arg2.length
                    require idx + 1 < arg2.length
                    idx = idx + 2
                    continue 
                require stor11[arg1] - 1 < stor0.length
                require stor0[stor11[arg1]].field_0
                address(stor0[stor11[arg1]].field_0) = 0
                Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                emit 0x7c6543bd: stor11[arg1], 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor7 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor8.length) = 0
                    uint255(stor8.length.field_1) = 9
                    Mask(248, 0, stor8.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint256(stor8[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor7)
                    call stor7.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(stor6) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor7)
                        call stor7.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).cbAddress() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require stor11[arg1] > 0
                    idx = 2
                    while idx < 42:
                        require idx < arg2.length
                        require idx + 1 < arg2.length
                        idx = idx + 2
                        continue 
                    require stor11[arg1] - 1 < stor0.length
                    require stor0[stor11[arg1]].field_0
                    address(stor0[stor11[arg1]].field_0) = 0
                    Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                    emit 0x7c6543bd: stor11[arg1], 0
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                        stor7 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor8.length) = 0
                        uint255(stor8.length.field_1) = 11
                        Mask(248, 0, stor8.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor8[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor7)
                        call stor7.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor6) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor7)
                            call stor7.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                        require ext_code.size(address(stor6))
                        staticcall address(stor6).cbAddress() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor11[arg1] > 0
                        idx = 2
                        while idx < 42:
                            require idx < arg2.length
                            require idx + 1 < arg2.length
                            idx = idx + 2
                            continue 
                        require stor11[arg1] - 1 < stor0.length
                        require stor0[stor11[arg1]].field_0
                        address(stor0[stor11[arg1]].field_0) = 0
                        Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                        emit 0x7c6543bd: stor11[arg1], 0
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor7 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor7 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor7 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor7)
                        call stor7.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor6) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor7)
                            call stor7.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                        require ext_code.size(address(stor6))
                        staticcall address(stor6).cbAddress() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor11[arg1] > 0
                        idx = 2
                        while idx < 42:
                            require idx < arg2.length
                            require idx + 1 < arg2.length
                            idx = idx + 2
                            continue 
                        require stor11[arg1] - 1 < stor0.length
                        require stor0[stor11[arg1]].field_0
                        address(stor0[stor11[arg1]].field_0) = 0
                        Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor11[arg1]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
                        emit 0x7c6543bd: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length) + 32]
    else:
        if ext_code.size(stor7):
            require ext_code.size(stor7)
            call stor7.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor6) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor7)
                call stor7.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
            require ext_code.size(address(stor6))
            staticcall address(stor6).cbAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            require stor11[arg1] > 0
            idx = 2
            while idx < 42:
                require idx < arg2.length
                require idx + 1 < arg2.length
                idx = idx + 2
                continue 
            require stor11[arg1] - 1 < stor0.length
            require stor0[stor11[arg1]].field_0
            address(stor0[stor11[arg1]].field_0) = 0
            Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor11[arg1]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
            emit 0x7c6543bd: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length) + 32]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor7 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor8.length) = 0
                uint255(stor8.length.field_1) = 11
                Mask(248, 0, stor8.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint256(stor8[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor7)
                call stor7.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(stor6) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor7)
                    call stor7.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                require ext_code.size(address(stor6))
                staticcall address(stor6).cbAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                require stor11[arg1] > 0
                idx = 2
                while idx < 42:
                    require idx < arg2.length
                    require idx + 1 < arg2.length
                    idx = idx + 2
                    continue 
                require stor11[arg1] - 1 < stor0.length
                require stor0[stor11[arg1]].field_0
                address(stor0[stor11[arg1]].field_0) = 0
                Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                emit 0x7c6543bd: stor11[arg1], 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor7 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor8.length) = 0
                    uint255(stor8.length.field_1) = 12
                    Mask(248, 0, stor8.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint256(stor8[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor7)
                    call stor7.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(stor6) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor7)
                        call stor7.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).cbAddress() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require stor11[arg1] > 0
                    idx = 2
                    while idx < 42:
                        require idx < arg2.length
                        require idx + 1 < arg2.length
                        idx = idx + 2
                        continue 
                    require stor11[arg1] - 1 < stor0.length
                    require stor0[stor11[arg1]].field_0
                    address(stor0[stor11[arg1]].field_0) = 0
                    Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                    emit 0x7c6543bd: stor11[arg1], 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor7 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor8.length) = 0
                        uint255(stor8.length.field_1) = 9
                        Mask(248, 0, stor8.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor8[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor7)
                        call stor7.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor6) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor7)
                            call stor7.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                        require ext_code.size(address(stor6))
                        staticcall address(stor6).cbAddress() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor11[arg1] > 0
                        idx = 2
                        while idx < 42:
                            require idx < arg2.length
                            require idx + 1 < arg2.length
                            idx = idx + 2
                            continue 
                        require stor11[arg1] - 1 < stor0.length
                        require stor0[stor11[arg1]].field_0
                        address(stor0[stor11[arg1]].field_0) = 0
                        Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                        emit 0x7c6543bd: stor11[arg1], 0
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                            stor7 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor8.length) = 0
                            uint255(stor8.length.field_1) = 11
                            Mask(248, 0, stor8.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint256(stor8[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor7)
                            call stor7.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor6) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor7)
                                call stor7.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).cbAddress() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor11[arg1] > 0
                            idx = 2
                            while idx < 42:
                                require idx < arg2.length
                                require idx + 1 < arg2.length
                                idx = idx + 2
                                continue 
                            require stor11[arg1] - 1 < stor0.length
                            require stor0[stor11[arg1]].field_0
                            address(stor0[stor11[arg1]].field_0) = 0
                            Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                            emit 0x7c6543bd: stor11[arg1], 0
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor7 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor7 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor7 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor7)
                            call stor7.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor6) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor7)
                                call stor7.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).cbAddress() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor11[arg1] > 0
                            idx = 2
                            while idx < 42:
                                require idx < arg2.length
                                require idx + 1 < arg2.length
                                idx = idx + 2
                                continue 
                            require stor11[arg1] - 1 < stor0.length
                            require stor0[stor11[arg1]].field_0
                            address(stor0[stor11[arg1]].field_0) = 0
                            Mask(96, 0, stor0[stor11[arg1]].field_0) = 1
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor11[arg1]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
                            emit 0x7c6543bd: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length) + 32]
}



}

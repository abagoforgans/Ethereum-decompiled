contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor10; offset 8

function _fallback() payable {
    stor0 = 'ETHLottery - Last 1 Byte Lottery'
    require not msg.value
    address(stor2.field_0) = msg.sender
    Mask(96, 0, stor2.field_160) = 1
    stor6 = block.number
    stor1 = code.data[6151 len 20]
    stor4 = code.data[6171 len 32]
    stor3 = code.data[6203 len 32]
    stor5 = code.data[6235 len 32]
    if code.data[6279 len 20] != address(stor2.field_0):
        stor10 = code.data[6279 len 20]
        require ext_code.size(stor10)
        call stor10.0xa53aeb4e with:
             gas gas_remaining - 710 wei
        require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1aa3a008 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Open(bool(uint8(stor2.field_160)));
    return code.data[873 len 5266]
}



// =====================  Runtime code  =====================


#
#  - manual_lottery(bytes32 arg1)
#  - lottery()
#
uint256 name;
address manager_address;
uint8 stor2; offset 160
uint128 stor2; offset 160
address owner;
uint256 jackpot;
uint256 fee;
uint256 owner_fee;
uint256 create_block;
uint256 result_block;
uint256 winners_count;
uint256 result_hash;
uint8 result;
address accumulated_fromAddress; offset 8
address accumulate_toAddress;
array of address stor12;
mapping of uint256 stor13;

function name() {
    return name
}

function accumulated_from() {
    return accumulated_fromAddress
}

function accumulate_to() {
    return accumulate_toAddress
}

function owner_fee() {
    return owner_fee
}

function manager_address() {
    return manager_address
}

function result_block() {
    return result_block
}

function result() {
    return Mask(8, 248, result)
}

function jackpot() {
    return jackpot
}

function owner() {
    return owner
}

function create_block() {
    return create_block
}

function result_hash() {
    return result_hash
}

function fee() {
    return fee
}

function winners_count() {
    return winners_count
}

function open() {
    return bool(uint8(stor2.field_160))
}

function destruct() {
    require not uint8(stor2.field_160)
    require msg.sender == owner
    emit 0xf58fef8e 
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function accumulate() {
    require tx.origin == owner
    require not uint8(stor2.field_160)
    require result_hash
    require not winners_count
    accumulate_toAddress = msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Accumulate(msg.sender, eth.balance(this.address));
}

function withdraw() {
    require not uint8(stor2.field_160)
    require stor13[address(msg.sender)] > 0
    stor13[address(msg.sender)] = 0
    call msg.sender with:
       value stor13[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit Withdraw(stor13[address(msg.sender)], block.timestamp, msg.sender);
    return 1
}

function play(bytes1 arg1) payable {
    require uint8(stor2.field_160)
    require msg.value >= fee
    uint256(stor12[Mask(8, 248, arg1)])++
    if not uint256(stor12[Mask(8, 248, arg1)]) <= uint256(stor12[Mask(8, 248, arg1)]) + 1:
        idx = uint256(stor12[Mask(8, 248, arg1)]) + 1
        while uint256(stor12[Mask(8, 248, arg1)]) > idx:
            uint256(stor12[Mask(8, 248, arg1)][idx]) = 0
            idx = idx + 1
            continue 
    address(stor12[Mask(8, 248, arg1)][uint256(stor12[Mask(8, 248, arg1)])]) = msg.sender
    if eth.balance(this.address) >= jackpot:
        call owner with:
           value eth.balance(this.address) * owner_fee / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return 0
        Mask(96, 0, stor2.field_160) = 0
        result_block = block.number + 10
        emit Open(bool(uint8(stor2.field_160)));
    emit Balance(eth.balance(this.address));
    emit Play(Mask(8, 248, arg1), block.timestamp, msg.sender);
    return 1
}



}

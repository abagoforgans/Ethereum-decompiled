contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 feePercent;
uint256 stor2; offset 1
uint256 stor2;
address owner;
uint256 stor4;

function haveContract(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1].field_0)
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'you are not an owner'
    if arg1 >= uint255(stor2.field_1):
        revert with 0, 'should be less than 50%'
    feePercent = arg1
}

function getContract(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if stor0[arg1].field_0:
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               stor0[arg1].field_512,
               stor0[arg1].field_768,
               bool(stor0[arg1].field_1024),
               bool(stor0[arg1].field_1032),
               stor0[arg1].field_1280
    else:
        return 0
}

function withdraw(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not stor0[arg1].field_0:
        revert with 0, 'contractId does not exist'
    if arg1 != sha3(arg2):
        revert with 0, 'hashlock hash does not match'
    if stor0[arg1].field_1024:
        revert with 0, 'withdrawable: already withdrawn'
    if stor0[arg1].field_1032:
        revert with 0, 'withdrawable: already refunded'
    stor0[arg1].field_1280 = arg2
    stor0[arg1].field_1024 = 1
    call stor0[arg1].field_256 with:
       value stor0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xee09f918: arg2, arg1
    return 1
}

function claimTokens(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'you are not an owner'
    if not arg1:
        call owner with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function refund(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor0[arg1].field_0:
        revert with 0, 'contractId does not exist'
    if stor0[arg1].field_0 != msg.sender:
        revert with 0, 'refundable: not sender'
    if stor0[arg1].field_1032:
        revert with 0, 'refundable: already refunded'
    if stor0[arg1].field_1024:
        revert with 0, 'refundable: already withdrawn'
    if block.timestamp < stor0[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65726566756e6461626c653a2074696d656c6f636b206e6f7420796574207061737365,
                    mem[199 len 29]
    stor0[arg1].field_1032 = 1
    call stor0[arg1].field_0 with:
       value stor0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogHTLCRefund(arg1);
    return 1
}

function newContract(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.value <= 0:
        revert with 0, 'msg.value must be > 0'
    if arg3 <= block.timestamp + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe74696d656c6f636b2074696d65206d75737420626520696e20746865206675747572,
                    mem[199 len 29]
    require feePercent + uint256(stor2.field_0) >= uint256(stor2.field_0)
    if not msg.value:
        require feePercent + uint256(stor2.field_0) > 0
        require feePercent + uint256(stor2.field_0)
        require 0 / feePercent + uint256(stor2.field_0) <= msg.value
        require stor4 >= 0
        stor4 = stor4 + msg.value - (0 / feePercent + uint256(stor2.field_0))
        if stor0[arg2].field_0:
            revert with 0, 'contract exist'
        stor0[arg2].field_0 = msg.sender
        stor0[arg2].field_256 = arg1
        stor0[arg2].field_512 = 0 / feePercent + uint256(stor2.field_0)
        stor0[arg2].field_768 = arg3
        stor0[arg2].field_1024 = 0
        stor0[arg2].field_1032 = 0
        stor0[arg2].field_1280 = 0
        emit 0x48fd19ea: 0 / feePercent + uint256(stor2.field_0), arg3, arg2, msg.sender, arg1
    else:
        require uint256(stor2.field_0) * msg.value / msg.value == uint256(stor2.field_0)
        require feePercent + uint256(stor2.field_0) > 0
        require feePercent + uint256(stor2.field_0)
        require uint256(stor2.field_0) * msg.value / feePercent + uint256(stor2.field_0) <= msg.value
        require stor4 >= 0
        stor4 = stor4 + msg.value - (uint256(stor2.field_0) * msg.value / feePercent + uint256(stor2.field_0))
        if stor0[arg2].field_0:
            revert with 0, 'contract exist'
        stor0[arg2].field_0 = msg.sender
        stor0[arg2].field_256 = arg1
        stor0[arg2].field_512 = uint256(stor2.field_0) * msg.value / feePercent + uint256(stor2.field_0)
        stor0[arg2].field_768 = arg3
        stor0[arg2].field_1024 = 0
        stor0[arg2].field_1032 = 0
        stor0[arg2].field_1280 = 0
        emit 0x48fd19ea: uint256(stor2.field_0) * msg.value / feePercent + uint256(stor2.field_0), arg3, arg2, msg.sender, arg1
}



}

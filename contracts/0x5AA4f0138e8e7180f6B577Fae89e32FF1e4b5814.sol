contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
    mem[96 len -3888] = code.data[4223 len -3888]
    mem[64] = -3792
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3 = mem[140 len 20]
    stor2 = mem[140 len 20]
    return code.data[335 len 3888]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address stor2;
address sub_eef7f540Address;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function sub_eef7f540(?) {
    return sub_eef7f540Address
}

function sub_cde29ca4(?) {
    sub_eef7f540Address = arg1
    stor2 = arg1
}

function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function cancel(bytes32 arg1) {
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0x5f0632ff with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xc4d252f5 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit receivedTokens(address(arg1), arg2, address(arg3), Array(len=arg4.length, data=arg4[all]));
}

function sub_e9035172(?) {
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0xa230c524 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x5f0632ff with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xd594c465 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, arg3, arg4, arg5, 0, 0
    require ext_call.success
    emit 0x8f923461: arg1, 0, arg3, arg4, arg5
    return 1
}

function execute(bytes32 arg1) {
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0x5f0632ff with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xfbc6da75 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xa230c524 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf17b3e69 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x17d60c6a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x155bf4e2 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    if not ext_call.return_data[12 len 20]:
        call stor2.0xfbc6da75 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.getAmount(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        call address(ext_call.return_data[0]) with:
           value 10^18 * ext_call.return_data[0] wei
             gas gas_remaining - 34710 wei
    else:
        call stor2.0x155bf4e2 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xfbc6da75 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.getAmount(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xe751f271 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0x31e58fd6: arg1
    return 1
}

function sub_e794e159(?) {
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0xa230c524 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x5f0632ff with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xd594c465 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, arg3, arg4, arg5, 0, 0
    require ext_call.success
    emit 0x8f923461: arg1, 0, arg3, arg4, arg5
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0x5f0632ff with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xfbc6da75 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xa230c524 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf17b3e69 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x17d60c6a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x155bf4e2 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    if not ext_call.return_data[12 len 20]:
        call stor2.0xfbc6da75 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.getAmount(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        call address(ext_call.return_data[0]) with:
           value 10^18 * ext_call.return_data[0] wei
             gas gas_remaining - 34710 wei
    else:
        call stor2.0x155bf4e2 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xfbc6da75 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.getAmount(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xe751f271 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0x31e58fd6: arg1
    return 1
}



}

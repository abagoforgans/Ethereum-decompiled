contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[4959 len 20]
    return code.data[75 len 4872]
}



// =====================  Runtime code  =====================


address owner;
address operatorAddress;
address transferProxyAddress;
mapping of address tokenHolders;
mapping of uint8 stor4;
mapping of struct sub_9266512d;
mapping of uint8 stor6;

function sub_243582fa(?) {
    return bool(stor6[arg1])
}

function operator() {
    return operatorAddress
}

function tokenHolders(address arg1) {
    return tokenHolders[arg1]
}

function transferProxy() {
    return transferProxyAddress
}

function sub_74c0cd27(?) {
    return bool(stor4[arg1])
}

function isTokenSupported(address arg1) {
    return bool(tokenHolders[address(arg1)])
}

function sub_78532de0(?) {
    return bool(sub_9266512d[arg1].field_0)
}

function owner() {
    return owner
}

function sub_9266512d(?) {
    return sub_9266512d[arg1].field_0, sub_9266512d[arg1].field_256, sub_9266512d[arg1].field_512
}

function sub_d7fbaa19(?) {
    return tokenHolders[address(arg1)]
}

function _fallback() payable {
    revert
}

function replaceOwner(address arg1) {
    if owner != msg.sender:
        return 0
    owner = arg1
    emit 0x29078237: arg1
    return 1
}

function setOperator(address arg1) {
    if owner != msg.sender:
        return 0
    operatorAddress = arg1
    emit 0x1d3afcaa: arg1
    return 1
}

function sub_045dd109(?) {
    if owner != msg.sender:
        return 0
    stor4[address(arg1)] = uint8(arg2)
    emit 0x40cded1b: arg2, arg1
    return 1
}

function setTransferProxy(address arg1) {
    if owner != msg.sender:
        return 0
    transferProxyAddress = arg1
    emit 0xf850397d: arg1
    return 1
}

function setTokenHolder(address arg1, address arg2) {
    if owner != msg.sender:
        return 0
    tokenHolders[address(arg1)] = arg2
    emit 0xfcdd5b0e: arg1, arg2
    return 1
}

function allowance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args tokenHolders[address(arg1)], this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_b72f6ee3(?) {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            return 0
    if not stor4[address(arg2)]:
        return 0
    require ext_code.size(arg2)
    call arg2.setTotalSupply(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return 0
}

function sub_ae54e290(?) {
    if transferProxyAddress != msg.sender:
        return 0
    if not sub_9266512d[arg1].field_0:
        return 0
    emit 0xe7d188b2: sub_9266512d[arg1].field_0, sub_9266512d[arg1].field_256, arg1, sub_9266512d[arg1].field_512
    sub_9266512d[arg1].field_0 = 0
    sub_9266512d[arg1].field_256 = 0
    sub_9266512d[arg1].field_512 = 0
    stor6[arg1] = 1
    return 1
}

function sub_5457b3b9(?) {
    if not stor4[address(arg2)]:
        return 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if arg1 > ext_call.return_data[0]:
        return 0
    require ext_code.size(arg2)
    call arg2.setBalance(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, ext_call.return_data[0] - arg1
    require ext_call.success
    return 1
}

function sub_cc0ee818(?) {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            return 0
    if sub_9266512d[arg1].field_0:
        return 0
    if stor6[arg1]:
        return 0
    if not tokenHolders[address(arg4)]:
        return 0
    if not arg2:
        return 0
    if arg2 == this.address:
        return 0
    if tokenHolders[address(arg2)]:
        return 0
    if arg3 <= 0:
        return 0
    sub_9266512d[arg1].field_0 = arg2
    sub_9266512d[arg1].field_256 = arg3
    sub_9266512d[arg1].field_512 = arg4
    emit 0x926c325a: address(arg2), arg3, arg1, arg4
    return 1
}

function sub_8f180d9c(?) {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            return 0
    if stor6[arg1]:
        return 0
    if not stor4[address(arg4)]:
        return 0
    require ext_code.size(arg4)
    call arg4.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0] > arg3 + ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > arg3 + ext_call.return_data[0]:
        return 0
    if not arg3:
        return 0
    stor6[arg1] = 1
    require ext_code.size(arg4)
    call arg4.setBalance(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3 + ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        stor6[arg1] = 0
    else:
        emit 0xe7d188b2: address(arg2), arg3, arg1, arg4
    return bool(ext_call.return_data[0])
}

function withdrawToken(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    if operatorAddress == msg.sender:
        if not sub_9266512d[arg1].field_0:
            if not stor6[arg1]:
                if tokenHolders[address(arg4)]:
                    if arg2:
                        if arg2 != this.address:
                            if not tokenHolders[address(arg2)]:
                                if arg3 > 0:
                                    stor6[arg1] = 1
                                    require ext_code.size(arg4)
                                    call arg4.0x23b872dd with:
                                         gas gas_remaining - 50 wei
                                        args tokenHolders[address(arg4)], address(arg2), arg3
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit 0xe7d188b2: address(arg2), arg3, arg1, arg4
    else:
        if owner == msg.sender:
            if not sub_9266512d[arg1].field_0:
                if not stor6[arg1]:
                    if tokenHolders[address(arg4)]:
                        if arg2:
                            if arg2 != this.address:
                                if not tokenHolders[address(arg2)]:
                                    if arg3 > 0:
                                        stor6[arg1] = 1
                                        require ext_code.size(arg4)
                                        call arg4.0x23b872dd with:
                                             gas gas_remaining - 50 wei
                                            args tokenHolders[address(arg4)], address(arg2), arg3
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        emit 0xe7d188b2: address(arg2), arg3, arg1, arg4
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 8843]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert 
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    contractOwner = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function sub_c47ccc4a(?) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.init(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    emit 0xa9e1ee75: arg1, arg2
    return 1
}

function deploy() {
    if contractOwner != msg.sender:
        return 0
    create contract with 0 wei
                    code: code.data[1219 len 905]
    require create.new_address
    create contract with 0 wei
                    code: code.data[2124 len 6676], address(this.address), address(create.new_address), 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xd613be0a with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    emit Deployed(address(create.new_address));
    return 1
}

function sub_a6ec80e2(?) {
    if contractOwner != msg.sender:
        return 0
    create contract with 0 wei
                    code: code.data[1219 len 905]
    require create.new_address
    create contract with 0 wei
                    code: code.data[2124 len 6676], address(this.address), address(create.new_address), arg1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xd613be0a with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    emit Deployed(address(create.new_address));
    return 1
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1771]




// =====================  Runtime code  =====================


address stor0;
address pendingContractOwner;

function pendingContractOwner() {
    return pendingContractOwner
}

function _fallback() payable {
  stop
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    pendingContractOwner = 0
    stor0 = msg.sender
    emit 0x595ee9ff: msg.sender
    return 1
}

function defaultOwner() {
    require ext_code.size(this.address)
    call this.address.0x17de2f1f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function contractOwner() {
    if stor0:
        return stor0
    require ext_code.size(this.address)
    call this.address.0x17de2f1f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function constructor() {
    require not stor0
    require ext_code.size(this.address)
    call this.address.0x17de2f1f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[12 len 20]
    stor0 = msg.sender
}

function constructor(address arg1) {
    require not stor0
    require ext_code.size(this.address)
    call this.address.0x17de2f1f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[12 len 20]
    stor0 = arg1
}

function forceChangeContractOwnership(address arg1) {
    if stor0:
        if stor0 != msg.sender:
            return 0
    else:
        require ext_code.size(this.address)
        call this.address.0x17de2f1f with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            return 0
    stor0 = arg1
    emit 0x595ee9ff: arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if stor0:
        if stor0 != msg.sender:
            return 0
    else:
        require ext_code.size(this.address)
        call this.address.0x17de2f1f with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            return 0
    pendingContractOwner = arg1
    emit 0x9c8accbc: arg1
    return 1
}

function forward(address arg1, uint256 arg2, bytes arg3, bool arg4) {
    if stor0:
        if stor0 != msg.sender:
            return 0
    else:
        require ext_code.size(this.address)
        call this.address.0x17de2f1f with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            return 0
    call arg1 with:
       value arg2 wei
         gas 63 * gas_remaining / 64 wei
        args arg3[all]
    if not ext_call.success:
        require not arg4
    return ext_call.return_data[0]
}



}

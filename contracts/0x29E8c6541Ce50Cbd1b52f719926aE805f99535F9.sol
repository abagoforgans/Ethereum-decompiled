contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of address stor3;

function _fallback() {
    mem[96 len -1606] = code.data[2348 len -1606]
    mem[64] = -1510
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor2 = mem[108 len 20]
    idx = 0
    while idx < mem[mem[128] + 96]:
        require idx < mem[mem[128] + 96]
        if this.address != msg.sender:
            if stor1 != msg.sender:
                require stor0
                mem[-1506] = msg.sender
                mem[-1474] = this.address
                mem[-1442] = call.func_hash
                require ext_code.size(stor0)
                call stor0.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                mem[-1510] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            s = stor3.length + sha3(3) + 1
            while sha3(3) + stor3.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 3
        stor3[stor3.length] = mem[(32 * idx) + mem[128] + 140 len 20]
        idx = idx + 1
        continue 
    return code.data[742 len 1606]
}



// =====================  Runtime code  =====================


const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 0


address authorityAddress;
address owner;
address controlledAddress;
array of address stor3;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function controlled() {
    return controlledAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        require ext_code.size(address(stor3[idx]))
        call address(stor3[idx]).onTokenTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args address(arg1), address(arg2), arg3
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function changeController(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(controlledAddress)
    call controlledAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function addGuard(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = arg1
}



}

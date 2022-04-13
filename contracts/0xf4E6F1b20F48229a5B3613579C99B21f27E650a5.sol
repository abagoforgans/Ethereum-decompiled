contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 18
    require not msg.value
    mem[96 len -5711] = code.data[6067 len -5711]
    mem[64] = -5615
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = mem[128]
    return code.data[356 len 5711]
}



// =====================  Runtime code  =====================


address authorityAddress;
uint8 stor1; offset 160
address owner;
uint256 symbol;
array of uint256 name;
uint256 decimals;
address logicAddress;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function stopped() {
    return bool(stor1)
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function authority() {
    return authorityAddress
}

function logic() {
    return logicAddress
}

function triggerTransferEvent(address arg1, address arg2, uint256 arg3) {
    require logicAddress == msg.sender
    emit Transfer(arg3, arg1, arg2);
}

function totalSupply() {
    require ext_code.size(logicAddress)
    call logicAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(logicAddress)
    call logicAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(logicAddress)
    call logicAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require msg.value > 0
    require ext_code.size(logicAddress)
    call logicAddress.handlePayment(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.approve(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function pull(address arg1, uint128 arg2) {
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.sender, arg2
    require ext_call.success
    emit Transfer(arg2, arg1, msg.sender);
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return bool(ext_call.return_data[0])
}

function push(address arg1, uint128 arg2) {
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function setName(string arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function setLogic(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    logicAddress = arg1
    return 1
}

function mint(address arg1, uint256 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, this.address, msg.sender);
}

function burn(address arg1, uint128 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    require not stor1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(logicAddress)
    call logicAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, this.address);
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    require ext_code.size(logicAddress)
    call logicAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(logicAddress)
    call logicAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args owner, address(arg1), ext_call.return_data[0]
    require ext_call.success
    emit Transfer(ext_call.return_data[0], owner, arg1);
    require ext_code.size(logicAddress)
    call logicAddress.0x13af4035 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                emit UnauthorizedAccess(msg.sender, call.func_hash);
                revert
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}



}

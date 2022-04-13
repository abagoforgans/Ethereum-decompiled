contract main {


// =======================  Init code  ======================


address stor1;
address stor5;
address stor6;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    require code.data[8880 len 20]
    if code.data[8912 len 20]:
        stor5 = code.data[8912 len 20]
    else:
        create contract with 0 wei
                        code: code.data[6972 len 1896], address(this.address), 0, msg.sender
        require create.new_address
        stor5 = address(create.new_address)
    stor6 = code.data[8880 len 20]
    return code.data[371 len 6601]
}



// =====================  Runtime code  =====================


#
#  - sub_71432b4d(?)
#
address authorityAddress;
uint8 stor1; offset 160
address owner;
uint256 contributionCount;
uint256 sub_509f5c32;
mapping of struct stor4;
address dataAddress;
address tokenAddress;

function sub_509f5c32(?) {
    return sub_509f5c32
}

function contributionCount() {
    return contributionCount
}

function data() {
    return dataAddress
}

function stopped() {
    return bool(stor1)
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require ext_code.size(dataAddress)
    call dataAddress.supply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(dataAddress)
    call dataAddress.approvals(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function handlePayment(address arg1) payable {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    contributionCount++
    stor4[stor2].field_0 = arg1
    stor4[stor2].field_256 = msg.value
    stor4[stor2].field_512 = 0
    emit 0x6292cbe1: contributionCount, address(arg1), msg.value
}

function setOwner(address arg1) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    owner = arg1
    emit LogSetOwner(arg1);
    require ext_code.size(dataAddress)
    call dataAddress.0x13af4035 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function approve(address arg1, address arg2, uint256 arg3) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.setApprovals(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    emit Approval(arg3, arg1, arg2);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] - arg2 <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.supply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] - arg2 <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setSupply(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] - arg2)
    require ext_call.success
}

function setToken(address arg1) {
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
    tokenAddress = arg1
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

function payout(address arg1) {
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
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mint(address arg1, uint256 arg2) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] + arg2
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.supply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setSupply(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] + arg2)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xc463b008 with:
         gas gas_remaining - 710 wei
        args address(this.address), address(arg1), arg2
    require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] - arg3 <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0] + arg3
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_code.size(dataAddress)
    call dataAddress.approvals(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_code.size(dataAddress)
    call dataAddress.approvals(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0] - arg3 <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setApprovals(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] - arg3 <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0] + arg3
    require ext_call.success
    return 1
}



}

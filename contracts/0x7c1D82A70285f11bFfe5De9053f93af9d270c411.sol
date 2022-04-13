contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;

function _fallback() payable {
    stor4 = 3000
    stor5 = 1
    stor6 = 417710 * 3600
    stor9 = 25000 * 10^18 * 3600
    require not msg.value
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    require code.data[10993 len 20]
    if code.data[11025 len 20]:
        stor2 = code.data[11025 len 20]
    else:
        create contract with 0 wei
                        code: code.data[9158 len 1823], address(this.address), 120000000 * 10^18, msg.sender
        require create.new_address
        stor2 = address(create.new_address)
    stor3 = code.data[10993 len 20]
    stor6 = code.data[11045 len 32]
    stor7 = code.data[11045 len 32] + (3600 * code.data[11077 len 32])
    return code.data[454 len 8704]
}



// =====================  Runtime code  =====================


address authorityAddress;
uint8 stor1; offset 160
address owner;
address dataAddress;
address tokenAddress;
uint256 tokensPerWei;
uint8 stor5;
uint256 icoStart;
uint256 icoEnd;
uint256 icoSale;
uint256 maxIco;
array of address stor10;

function icoEnd() {
    return icoEnd
}

function tokensPerWei() {
    return tokensPerWei
}

function icoSale() {
    return icoSale
}

function data() {
    return dataAddress
}

function stopped() {
    return bool(stor1)
}

function icoStart() {
    return icoStart
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function contributorCount() {
    return stor10.length
}

function maxIco() {
    return maxIco
}

function token() {
    return tokenAddress
}

function presale() {
    return bool(stor5)
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

function setPresale(bool arg1) {
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
    stor5 = uint8(arg1)
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

function setTokensPerWei(uint256 arg1) {
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
    require arg1 > 0
    tokensPerWei = arg1
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

function setIcoStart(uint256 arg1, uint256 arg2) {
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
    icoStart = arg1
    icoEnd = arg1 + (3600 * arg2)
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

function burn(address arg1, uint128 arg2) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg2
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

function mint(uint128 arg1) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require ext_code.size(dataAddress)
    call dataAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0] + arg1 >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] + arg1
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.supply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + arg1 >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setSupply(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] + arg1)
    require ext_call.success
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

function returnIcoInvestments(uint256 arg1) {
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
    require block.timestamp > icoEnd
    require icoSale < 20000000 * 10^18
    require arg1 < stor10.length
    require address(stor10[arg1])
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args address(stor10[arg1])
    require ext_call.success
    require tokensPerWei > 0
    require tokensPerWei
    require (ext_call.return_data[0] / tokensPerWei) - 5 * 10^15 <= ext_call.return_data[0] / tokensPerWei
    require ext_code.size(tokenAddress)
    call tokenAddress.transferEth(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(stor10[arg1]), (ext_call.return_data[0] / tokensPerWei) - 5 * 10^15
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args address(stor10[arg1])
    require ext_call.success
    require 0 <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(stor10[arg1]), 0
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args owner, 2 * ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(stor10[arg1]), owner, ext_call.return_data[0]
    require ext_call.success
    require arg1 < stor10.length
    address(stor10[arg1]) = 0
}

function handlePayment(address arg1, uint256 arg2) {
    if tokenAddress != msg.sender:
        require msg.sender == this.address
    require arg2 > 0
    require block.timestamp >= icoStart
    require block.timestamp <= icoEnd
    require icoSale < maxIco
    if arg2 * tokensPerWei:
        if tokensPerWei > arg2:
            require arg2 * tokensPerWei >= tokensPerWei
        else:
            require arg2 * tokensPerWei >= arg2
    if stor5:
        icoSale += arg2 * tokensPerWei
        if (arg2 * tokensPerWei) + icoSale <= maxIco:
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] >= arg2 * tokensPerWei
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] - (arg2 * tokensPerWei) <= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0] - (arg2 * tokensPerWei)
            require ext_call.success
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_call.return_data[0] + (arg2 * tokensPerWei) >= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0] + (arg2 * tokensPerWei)
            require ext_call.success
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), arg2 * tokensPerWei
            require ext_call.success
            return (arg2 * tokensPerWei)
        require icoSale - maxIco <= icoSale
        require (arg2 * tokensPerWei) - icoSale + maxIco <= arg2 * tokensPerWei
        require tokensPerWei > 0
        require tokensPerWei
        require ext_code.size(tokenAddress)
        call tokenAddress.transferEth(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), icoSale - maxIco / tokensPerWei
        require ext_call.success
        icoSale = maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] >= (arg2 * tokensPerWei) - icoSale + maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] - (arg2 * tokensPerWei) + icoSale - maxIco <= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0] - (arg2 * tokensPerWei) + icoSale - maxIco
        require ext_call.success
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + (arg2 * tokensPerWei) - icoSale + maxIco >= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] + (arg2 * tokensPerWei) - icoSale + maxIco
        require ext_call.success
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args owner, address(arg1), (arg2 * tokensPerWei) - icoSale + maxIco
        require ext_call.success
        return ((arg2 * tokensPerWei) - icoSale + maxIco)
    if block.timestamp < icoStart + (168 * 24 * 3600):
        icoSale += 150 * arg2 * tokensPerWei / 100
        if (150 * arg2 * tokensPerWei / 100) + icoSale <= maxIco:
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] >= 150 * arg2 * tokensPerWei / 100
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] - (150 * arg2 * tokensPerWei / 100) <= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0] - (150 * arg2 * tokensPerWei / 100)
            require ext_call.success
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_call.return_data[0] + (150 * arg2 * tokensPerWei / 100) >= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0] + (150 * arg2 * tokensPerWei / 100)
            require ext_call.success
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), 150 * arg2 * tokensPerWei / 100
            require ext_call.success
            return (150 * arg2 * tokensPerWei / 100)
        require icoSale - maxIco <= icoSale
        require (150 * arg2 * tokensPerWei / 100) - icoSale + maxIco <= 150 * arg2 * tokensPerWei / 100
        require tokensPerWei > 0
        require tokensPerWei
        require ext_code.size(tokenAddress)
        call tokenAddress.transferEth(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), icoSale - maxIco / tokensPerWei
        require ext_call.success
        icoSale = maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] >= (150 * arg2 * tokensPerWei / 100) - icoSale + maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] - (150 * arg2 * tokensPerWei / 100) + icoSale - maxIco <= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0] - (150 * arg2 * tokensPerWei / 100) + icoSale - maxIco
        require ext_call.success
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + (150 * arg2 * tokensPerWei / 100) - icoSale + maxIco >= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] + (150 * arg2 * tokensPerWei / 100) - icoSale + maxIco
        require ext_call.success
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args owner, address(arg1), (150 * arg2 * tokensPerWei / 100) - icoSale + maxIco
        require ext_call.success
        return ((150 * arg2 * tokensPerWei / 100) - icoSale + maxIco)
    if block.timestamp < icoStart + (312 * 24 * 3600):
        icoSale += 130 * arg2 * tokensPerWei / 100
        if (130 * arg2 * tokensPerWei / 100) + icoSale <= maxIco:
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] >= 130 * arg2 * tokensPerWei / 100
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] - (130 * arg2 * tokensPerWei / 100) <= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0] - (130 * arg2 * tokensPerWei / 100)
            require ext_call.success
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_call.return_data[0] + (130 * arg2 * tokensPerWei / 100) >= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0] + (130 * arg2 * tokensPerWei / 100)
            require ext_call.success
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), 130 * arg2 * tokensPerWei / 100
            require ext_call.success
            return (130 * arg2 * tokensPerWei / 100)
        require icoSale - maxIco <= icoSale
        require (130 * arg2 * tokensPerWei / 100) - icoSale + maxIco <= 130 * arg2 * tokensPerWei / 100
        require tokensPerWei > 0
        require tokensPerWei
        require ext_code.size(tokenAddress)
        call tokenAddress.transferEth(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), icoSale - maxIco / tokensPerWei
        require ext_call.success
        icoSale = maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] >= (130 * arg2 * tokensPerWei / 100) - icoSale + maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] - (130 * arg2 * tokensPerWei / 100) + icoSale - maxIco <= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0] - (130 * arg2 * tokensPerWei / 100) + icoSale - maxIco
        require ext_call.success
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + (130 * arg2 * tokensPerWei / 100) - icoSale + maxIco >= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] + (130 * arg2 * tokensPerWei / 100) - icoSale + maxIco
        require ext_call.success
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args owner, address(arg1), (130 * arg2 * tokensPerWei / 100) - icoSale + maxIco
        require ext_call.success
        return ((130 * arg2 * tokensPerWei / 100) - icoSale + maxIco)
    if block.timestamp >= icoStart + (456 * 24 * 3600):
        icoSale += arg2 * tokensPerWei
        if (arg2 * tokensPerWei) + icoSale <= maxIco:
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] >= arg2 * tokensPerWei
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args owner
            require ext_call.success
            require ext_call.return_data[0] - (arg2 * tokensPerWei) <= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0] - (arg2 * tokensPerWei)
            require ext_call.success
            require ext_code.size(dataAddress)
            call dataAddress.0x27e235e3 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_call.return_data[0] + (arg2 * tokensPerWei) >= ext_call.return_data[0]
            require ext_code.size(dataAddress)
            call dataAddress.setBalances(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0] + (arg2 * tokensPerWei)
            require ext_call.success
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), arg2 * tokensPerWei
            require ext_call.success
            return (arg2 * tokensPerWei)
        require icoSale - maxIco <= icoSale
        require (arg2 * tokensPerWei) - icoSale + maxIco <= arg2 * tokensPerWei
        require tokensPerWei > 0
        require tokensPerWei
        require ext_code.size(tokenAddress)
        call tokenAddress.transferEth(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), icoSale - maxIco / tokensPerWei
        require ext_call.success
        icoSale = maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] >= (arg2 * tokensPerWei) - icoSale + maxIco
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] - (arg2 * tokensPerWei) + icoSale - maxIco <= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0] - (arg2 * tokensPerWei) + icoSale - maxIco
        require ext_call.success
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + (arg2 * tokensPerWei) - icoSale + maxIco >= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] + (arg2 * tokensPerWei) - icoSale + maxIco
        require ext_call.success
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args owner, address(arg1), (arg2 * tokensPerWei) - icoSale + maxIco
        require ext_call.success
        return ((arg2 * tokensPerWei) - icoSale + maxIco)
    icoSale += 110 * arg2 * tokensPerWei / 100
    if (110 * arg2 * tokensPerWei / 100) + icoSale <= maxIco:
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] >= 110 * arg2 * tokensPerWei / 100
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require ext_call.return_data[0] - (110 * arg2 * tokensPerWei / 100) <= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0] - (110 * arg2 * tokensPerWei / 100)
        require ext_call.success
        require ext_code.size(dataAddress)
        call dataAddress.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + (110 * arg2 * tokensPerWei / 100) >= ext_call.return_data[0]
        require ext_code.size(dataAddress)
        call dataAddress.setBalances(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] + (110 * arg2 * tokensPerWei / 100)
        require ext_call.success
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args owner, address(arg1), 110 * arg2 * tokensPerWei / 100
        require ext_call.success
        return (110 * arg2 * tokensPerWei / 100)
    require icoSale - maxIco <= icoSale
    require (110 * arg2 * tokensPerWei / 100) - icoSale + maxIco <= 110 * arg2 * tokensPerWei / 100
    require tokensPerWei > 0
    require tokensPerWei
    require ext_code.size(tokenAddress)
    call tokenAddress.transferEth(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), icoSale - maxIco / tokensPerWei
    require ext_call.success
    icoSale = maxIco
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_call.return_data[0] >= (110 * arg2 * tokensPerWei / 100) - icoSale + maxIco
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_call.return_data[0] - (110 * arg2 * tokensPerWei / 100) + icoSale - maxIco <= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0] - (110 * arg2 * tokensPerWei / 100) + icoSale - maxIco
    require ext_call.success
    require ext_code.size(dataAddress)
    call dataAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] + (110 * arg2 * tokensPerWei / 100) - icoSale + maxIco >= ext_call.return_data[0]
    require ext_code.size(dataAddress)
    call dataAddress.setBalances(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] + (110 * arg2 * tokensPerWei / 100) - icoSale + maxIco
    require ext_call.success
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            uint256(stor10[idx]) = 0
            idx = idx + 1
            continue 
    address(stor10[stor10.length]) = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.triggerTansferEvent(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args owner, address(arg1), (110 * arg2 * tokensPerWei / 100) - icoSale + maxIco
    require ext_call.success
    return ((110 * arg2 * tokensPerWei / 100) - icoSale + maxIco)
}



}

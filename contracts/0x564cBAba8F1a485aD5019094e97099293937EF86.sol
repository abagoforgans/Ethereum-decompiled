contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of uint256 sub_66e89812;
uint256 tokensMinted;
uint256 tokensCap;

function tokensCap() {
    return tokensCap
}

function sub_66e89812(?) {
    return sub_66e89812[address(arg1)]
}

function tokensMinted() {
    return tokensMinted
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reclaimContract(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
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
    require ext_call.return_data[0]
}

function finalizeCrowdsale() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.setTransferEnabled(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6edbb85c(?) {
    require owner == msg.sender
    if not arg4:
        require not arg3
        require arg2 + tokensMinted >= tokensMinted
        tokensMinted += arg2
        require tokensCap >= arg2 + tokensMinted
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        return 1
    require arg4 + arg3 >= arg3
    require block.timestamp < arg4 + arg3
    create contract with 0 wei
                    code: code.data[2957 len 2837], address(arg1), arg3, 0, arg4, arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 + tokensMinted >= tokensMinted
    tokensMinted += arg2
    require tokensCap >= arg2 + tokensMinted
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(create.new_address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xf7145d67: address(create.new_address), arg2, Array(len=arg6.length, data=arg6[all]), arg1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function distributeTokens(address[] arg1, uint256[] arg2) {
    require owner == msg.sender
    require arg2.length == arg1.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        require cd[((32 * idx) + arg2 + 36)] >= sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])]
        if cd[((32 * idx) + arg2 + 36)] > sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])]:
            require sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])] <= cd[((32 * idx) + arg2 + 36)]
            require cd[((32 * idx) + arg2 + 36)] - sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])] + tokensMinted >= tokensMinted
            tokensMinted = cd[((32 * idx) + arg2 + 36)] - sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])] + tokensMinted
            require tokensCap >= cd[((32 * idx) + arg2 + 36)] - sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])] + tokensMinted
            mem[100] = address(cd[((32 * idx) + arg1 + 36)])
            mem[132] = cd[((32 * idx) + arg2 + 36)] - sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)] - sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        s = sub_66e89812[address(cd[((32 * idx) + arg1 + 36)])]
        s = address(cd[((32 * idx) + arg1 + 36)])
        s = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
    return 1
}



}

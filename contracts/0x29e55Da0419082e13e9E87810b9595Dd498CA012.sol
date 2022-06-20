contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of struct accounts;
mapping of uint8 stor3;
mapping of uint256 balance;

function known(address arg1) {
    return bool(stor3[arg1])
}

function sub_669be701(?) {
    return accounts.length
}

function owner() {
    return owner
}

function balance(address arg1) {
    return balance[arg1]
}

function accounts(uint256 arg1) {
    require arg1 < accounts.length
    return address(accounts[arg1].field_0)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_43501fb1(?) {
    require msg.sender == owner
    if not stor3[address(arg1)]:
        stor3[address(arg1)] = 1
        accounts.length++
        address(accounts[accounts.length].field_0) = arg1
    balance[address(arg1)] = arg2
    emit 0x4bdf43a5: arg2, arg1
}

function sub_55f026bd(?) {
    idx = 0
    s = 0
    while idx < accounts.length:
        mem[0] = address(accounts[idx].field_0)
        mem[32] = 4
        if balance[address(stor2[idx].field_0)] <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_7ec932f0(?) {
    s = 0
    idx = 0
    s = 0
    while idx < accounts.length:
        mem[0] = address(accounts[idx].field_0)
        mem[32] = 4
        require balance[address(stor2[idx].field_0)] + s >= s
        s = address(accounts[idx].field_0)
        idx = idx + 1
        s = balance[address(stor2[idx].field_0)] + s
        continue 
    return (stor[_8] * accounts.length)
}

function release() {
    if balance[address(msg.sender)] > 0:
        require balance[address(msg.sender)] <= balance[address(msg.sender)]
        balance[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balance[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Released(balance[address(msg.sender)], msg.sender);
}

function sub_4321a35e(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x7762b0fc: ext_call.return_data[0]
}

function sub_c3ca1621(?) {
    require msg.sender == owner
    require ('cd', 36).length == ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require msg.sender == owner
        if not stor3[address(cd[((32 * idx) + cd[4] + 36)])]:
            stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
            accounts.length++
            address(accounts[accounts.length].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        balance[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit 0x4bdf43a5: cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function getBeneficiaries() {
    if not accounts.length:
        mem[(32 * accounts.length) + 128] = 32
        mem[(32 * accounts.length) + 160] = accounts.length
        mem[(32 * accounts.length) + 192 len floor32(accounts.length)] = mem[128 len floor32(accounts.length)]
        return memory
          from (32 * accounts.length) + 128
           len (96 * accounts.length) + 64
    mem[128] = address(accounts.field_0)
    idx = 128
    s = 0
    while (32 * accounts.length) + 96 > idx:
        mem[idx + 32] = address(accounts[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * accounts.length) + 192 len floor32(accounts.length)] = mem[128 len floor32(accounts.length)]
    return Array(len=accounts.length, data=mem[128 len floor32(accounts.length)], mem[(32 * accounts.length) + floor32(accounts.length) + 192 len (32 * accounts.length) - floor32(accounts.length)]), 
}

function sub_45684d6a(?) {
    idx = 0
    s = 0
    while idx < accounts.length:
        mem[0] = address(accounts[idx].field_0)
        mem[32] = 4
        if balance[address(stor2[idx].field_0)] <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[3146 len 32 * s]
    t = 0
    idx = 0
    t = 0
    while idx < accounts.length:
        mem[0] = address(accounts[idx].field_0)
        mem[32] = 4
        if balance[address(stor2[idx].field_0)] <= 0:
            t = address(accounts[idx].field_0)
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = address(accounts[idx].field_0)
        t = address(accounts[idx].field_0)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function releaseAll() {
    idx = 0
    while idx < accounts.length:
        mem[0] = address(accounts[idx].field_0)
        mem[32] = 4
        if balance[address(stor2[idx].field_0)] > 0:
            require balance[address(stor2[idx].field_0)] <= balance[address(stor2[idx].field_0)]
            mem[0] = address(accounts[idx].field_0)
            mem[32] = 4
            balance[address(stor2[idx].field_0)] = 0
            mem[100] = address(accounts[idx].field_0)
            mem[132] = balance[address(stor2[idx].field_0)]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(accounts[idx].field_0), balance[address(stor2[idx].field_0)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[96] = balance[address(stor2[idx].field_0)]
            emit Released(balance[address(stor2[idx].field_0)], address(accounts[idx].field_0));
        idx = idx + 1
        continue 
}

function releaseBatch(address[] arg1) {
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        if balance[address(cd[((32 * idx) + arg1 + 36)])] > 0:
            require balance[address(cd[((32 * idx) + arg1 + 36)])] <= balance[address(cd[((32 * idx) + arg1 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 4
            balance[address(cd[((32 * idx) + arg1 + 36)])] = 0
            mem[100] = address(cd[((32 * idx) + arg1 + 36)])
            mem[132] = balance[address(cd[((32 * idx) + arg1 + 36)])]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)]), balance[address(cd[((32 * idx) + arg1 + 36)])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[96] = balance[address(cd[((32 * idx) + arg1 + 36)])]
            emit Released(balance[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function sub_a352fd24(?) {
    require arg2 + arg1 >= arg1
    if arg2 + arg1 <= accounts.length:
        idx = arg1
        while idx < arg2 + arg1:
            require idx < accounts.length
            mem[0] = address(accounts[idx].field_0)
            mem[32] = 4
            if balance[address(stor2[idx].field_0)] > 0:
                require balance[address(stor2[idx].field_0)] <= balance[address(stor2[idx].field_0)]
                mem[0] = address(accounts[idx].field_0)
                mem[32] = 4
                balance[address(stor2[idx].field_0)] = 0
                mem[100] = address(accounts[idx].field_0)
                mem[132] = balance[address(stor2[idx].field_0)]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(accounts[idx].field_0), balance[address(stor2[idx].field_0)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[96] = balance[address(stor2[idx].field_0)]
                emit Released(balance[address(stor2[idx].field_0)], address(accounts[idx].field_0));
            idx = idx + 1
            continue 
    else:
        idx = arg1
        while idx < accounts.length:
            mem[0] = address(accounts[idx].field_0)
            mem[32] = 4
            if balance[address(stor2[idx].field_0)] > 0:
                require balance[address(stor2[idx].field_0)] <= balance[address(stor2[idx].field_0)]
                mem[0] = address(accounts[idx].field_0)
                mem[32] = 4
                balance[address(stor2[idx].field_0)] = 0
                mem[100] = address(accounts[idx].field_0)
                mem[132] = balance[address(stor2[idx].field_0)]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(accounts[idx].field_0), balance[address(stor2[idx].field_0)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[96] = balance[address(stor2[idx].field_0)]
                emit Released(balance[address(stor2[idx].field_0)], address(accounts[idx].field_0));
            idx = idx + 1
            continue 
}



}

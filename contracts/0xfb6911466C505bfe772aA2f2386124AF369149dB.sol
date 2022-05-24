contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
address stor2;
uint256 sub_85559977;
uint256 numDividends;
uint256 sub_187efd75;
uint256 sub_b4283f9c;
uint256 sub_bf879e55;
uint8 stor8;
address stor8; offset 8

function sub_187efd75(?) {
    return sub_187efd75
}

function getNumDividends() {
    return numDividends
}

function sub_85559977(?) {
    return sub_85559977
}

function owner() {
    return owner
}

function sub_8ea8723f(?) {
    return bool(uint8(stor8.field_0))
}

function sub_b4283f9c(?) {
    return sub_b4283f9c
}

function sub_bf879e55(?) {
    return sub_bf879e55
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function claimOwnership() {
    require msg.sender == stor2
    owner = stor2
    return 1
}

function sub_4f2b39a2(?) {
    require msg.sender == owner
    sub_85559977 = arg1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_5c685f6f(?) {
    require msg.sender == owner
    emit 0xe8633ae8: sub_bf879e55, arg1
    sub_bf879e55 = arg1
}

function sub_7a45828c(?) {
    require msg.sender == owner
    if ext_code.size(arg1):
        address(stor8.field_8) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSuperContract(address arg1) {
    if not ext_code.size(arg1):
        return 0
    if stor1[address(arg1)] != 1:
        return 0
    return 1
}

function addContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function sub_703f1cd2(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    uint8(stor8.field_0) = 0
    emit 0x848db196 
    return 1
}

function startSpaceship() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    uint8(stor8.field_0) = 1
    emit 0x1952da93 
    return 1
}

function withdraw() {
    require msg.sender == owner
    emit Withdraw(eth.balance(this.address), msg.sender);
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateSpaceshipStatus() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).0xcc642cc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    numDividends = ext_call.return_data[0]
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_187efd75 = ext_call.return_data[0]
    sub_b4283f9c = eth.balance(this.address)
    uint8(stor8.field_0) = 0
}

function sendDividends() {
    require not uint8(stor8.field_0)
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    if not sub_187efd75:
        if sub_b4283f9c > 0:
            call owner with:
               value sub_b4283f9c wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if numDividends <= sub_85559977:
        s = 0
        s = 0
        idx = numDividends
        while idx > 0:
            require ext_code.size(address(stor8.field_8))
            call address(stor8.field_8).0x11a800bc with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = address(ext_call.return_data[0])
            require ext_code.size(address(stor8.field_8))
            call address(stor8.field_8).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                if ext_call.return_data[0] >= sub_bf879e55:
                    if not sub_b4283f9c:
                        require sub_187efd75
                        call address(ext_call.return_data[0]) with:
                           value 0 / sub_187efd75 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_187efd75
                        emit DividendDistributed((0 / sub_187efd75), address(ext_call.return_data[0]));
                    else:
                        require sub_b4283f9c
                        require sub_b4283f9c * ext_call.return_data[0] / sub_b4283f9c == ext_call.return_data[0]
                        require sub_187efd75
                        call address(ext_call.return_data[0]) with:
                           value sub_b4283f9c * ext_call.return_data[0] / sub_187efd75 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_b4283f9c * ext_call.return_data[0] / sub_187efd75
                        emit DividendDistributed((sub_b4283f9c * ext_call.return_data[0] / sub_187efd75), address(ext_call.return_data[0]));
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx - 1
            continue 
        require numDividends <= numDividends
        numDividends = 0
    else:
        require sub_85559977 <= numDividends
        s = 0
        s = 0
        idx = numDividends
        while idx > numDividends - sub_85559977:
            require ext_code.size(address(stor8.field_8))
            call address(stor8.field_8).0x11a800bc with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = address(ext_call.return_data[0])
            require ext_code.size(address(stor8.field_8))
            call address(stor8.field_8).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                if ext_call.return_data[0] >= sub_bf879e55:
                    if not sub_b4283f9c:
                        require sub_187efd75
                        call address(ext_call.return_data[0]) with:
                           value 0 / sub_187efd75 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_187efd75
                        emit DividendDistributed((0 / sub_187efd75), address(ext_call.return_data[0]));
                    else:
                        require sub_b4283f9c
                        require sub_b4283f9c * ext_call.return_data[0] / sub_b4283f9c == ext_call.return_data[0]
                        require sub_187efd75
                        call address(ext_call.return_data[0]) with:
                           value sub_b4283f9c * ext_call.return_data[0] / sub_187efd75 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_b4283f9c * ext_call.return_data[0] / sub_187efd75
                        emit DividendDistributed((sub_b4283f9c * ext_call.return_data[0] / sub_187efd75), address(ext_call.return_data[0]));
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx - 1
            continue 
        require sub_85559977 <= numDividends
        numDividends -= sub_85559977
}



}

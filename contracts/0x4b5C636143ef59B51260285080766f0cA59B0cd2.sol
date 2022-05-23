contract main {




// =====================  Runtime code  =====================


#
#  - revoke()
#
address owner;
address pendingOwner;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
uint256 stor7;
address stor8;

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function getAmount() {
    require msg.sender == owner
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setStart() {
    require msg.sender == owner
    require not stor4
    require msg.sender == owner
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor5 <= ext_call.return_data[0]
    stor4 = block.timestamp
    emit Start(stor2, block.timestamp);
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function vestedAmount() {
    require stor4 != 0
    if stor2 != msg.sender:
        require msg.sender == owner
    require stor3 + stor4 >= stor4
    if block.timestamp < stor3 + stor4:
        return 0
    require 1 <= stor6.length
    require stor6.length - 1 < stor6.length
    require stor6[stor6.length] + stor4 >= stor4
    if block.timestamp >= stor6[stor6.length] + stor4:
        return stor5
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        require stor6[idx] + stor4 >= stor4
        if block.timestamp >= stor6[idx] + stor4:
            idx = idx + 1
            continue 
        require stor6.length
        return (stor5 / stor6.length * idx)
    if stor6.length:
        return (stor5 / stor6.length * stor6.length)
    revert
}

function releasableAmount() {
    if stor2 != msg.sender:
        require msg.sender == owner
    if not stor4:
        return 0
    require stor4 != 0
    if stor2 != msg.sender:
        require msg.sender == owner
    require stor3 + stor4 >= stor4
    if block.timestamp < stor3 + stor4:
        if stor7 <= 0:
            return -stor7
    else:
        if 1 <= stor6.length:
            if stor6.length - 1 < stor6.length:
                if stor6[stor6.length] + stor4 >= stor4:
                    if block.timestamp >= stor6[stor6.length] + stor4:
                        if stor7 <= stor5:
                            return (stor5 - stor7)
                    else:
                        idx = 0
                        while idx < stor6.length:
                            mem[0] = 6
                            require stor6[idx] + stor4 >= stor4
                            if block.timestamp >= stor6[idx] + stor4:
                                idx = idx + 1
                                continue 
                            require stor6.length
                            require stor7 <= stor5 / stor6.length * idx
                            return ((stor5 / stor6.length * idx) - stor7)
                        if stor6.length:
                            if stor7 <= stor5 / stor6.length * stor6.length:
                                return ((stor5 / stor6.length * stor6.length) - stor7)
    revert
}

function release() {
    if stor2 != msg.sender:
        require msg.sender == owner
        if stor2 != msg.sender:
            require msg.sender == owner
    require stor4
    require stor4 != 0
    if stor2 != msg.sender:
        require msg.sender == owner
    require stor3 + stor4 >= stor4
    if block.timestamp < stor3 + stor4:
        require stor7 <= 0
        require -stor7 > 0
        require 0 >= stor7
        stor7 = 0
        require ext_code.size(stor8)
        call stor8.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, -stor7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Released(-stor7);
    else:
        require 1 <= stor6.length
        require stor6.length - 1 < stor6.length
        require stor6[stor6.length] + stor4 >= stor4
        if block.timestamp >= stor6[stor6.length] + stor4:
            require stor7 <= stor5
            require stor5 - stor7 > 0
            require stor5 >= stor7
            stor7 = stor5
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, stor5 - stor7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released((stor5 - stor7));
        else:
            idx = 0
            while idx < stor6.length:
                mem[0] = 6
                require stor6[idx] + stor4 >= stor4
                if block.timestamp >= stor6[idx] + stor4:
                    idx = idx + 1
                    continue 
                require stor6.length
                require stor7 <= stor5 / stor6.length * idx
                require (stor5 / stor6.length * idx) - stor7 > 0
                require stor5 / stor6.length * idx >= stor7
                stor7 = stor5 / stor6.length * idx
                require ext_code.size(stor8)
                call stor8.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor2, (stor5 / stor6.length * idx) - stor7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Released(((stor5 / stor6.length * idx) - stor7));
                if stor5 == stor7:
                    stor4 = 0
                    stor5 = 0
            require stor6.length
            require stor7 <= stor5 / stor6.length * stor6.length
            require (stor5 / stor6.length * stor6.length) - stor7 > 0
            require stor5 / stor6.length * stor6.length >= stor7
            stor7 = stor5 / stor6.length * stor6.length
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, (stor5 / stor6.length * stor6.length) - stor7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released(((stor5 / stor6.length * stor6.length) - stor7));
    if stor5 == stor7:
        stor4 = 0
        stor5 = 0
}



}

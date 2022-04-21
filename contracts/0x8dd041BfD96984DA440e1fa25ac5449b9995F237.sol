contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[5692 len 20]
    stor2 = code.data[5648 len 32]
    stor3 = code.data[5692 len 20]
    return code.data[387 len 5261]
}



// =====================  Runtime code  =====================


const endTime = 1512938285

const startTime = 1510173514


address owner;
address newOwner;
uint256 totalPresaleTokensYetToAllocate;
address beneficiaryAddress;
address tokenAddress;
address stor5;

function totalPresaleTokensYetToAllocate() {
    return totalPresaleTokensYetToAllocate
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function newOwner() {
    return newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function changeBeneficiary(address arg1) {
    require arg1
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setToken(address arg1) {
    require arg1
    require msg.sender == owner
    require not tokenAddress
    tokenAddress = arg1
    stor5 = arg1
}

function sub_fd6fe59e(?) {
    require ext_code.size(stor5)
    call stor5.totalAllocated() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function getTotalAmountOfTokens(uint256 arg1) {
    if block.timestamp < 1510778314:
        if not arg1:
            return (1300 * arg1)
        if arg1:
            if 1300 * arg1 / arg1 == 1300:
                return (1300 * arg1)
    else:
        if block.timestamp < 1511383114:
            if not arg1:
                return (1200 * arg1)
            if arg1:
                if 1200 * arg1 / arg1 == 1200:
                    return (1200 * arg1)
        else:
            if block.timestamp >= 1511987914:
                if not arg1:
                    return (1000 * arg1)
                if arg1:
                    if 1000 * arg1 / arg1 == 1000:
                        return (1000 * arg1)
            else:
                if not arg1:
                    return (1150 * arg1)
                if arg1:
                    if 1150 * arg1 / arg1 == 1150:
                        return (1150 * arg1)
    revert
}

function deliverPresaleTokens(address[] arg1, uint256[] arg2) {
    require tokenAddress
    require msg.sender == owner
    require block.timestamp < 1510173514
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require msg.sender == owner
        require totalPresaleTokensYetToAllocate > 0
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        require ext_call.success
        mem[100] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(stor5)
        call stor5.addToAllocation(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cd[((32 * idx) + arg2 + 36)]
        require ext_call.success
        require totalPresaleTokensYetToAllocate >= cd[((32 * idx) + arg2 + 36)]
        totalPresaleTokensYetToAllocate -= cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit PresaleContribution(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function contributeETH(address arg1) payable {
    require arg1
    require block.timestamp >= 1510173514
    require block.timestamp < 1512938285
    require tokenAddress
    if block.timestamp < 1510778314:
        if msg.value:
            require msg.value
            require 1300 * msg.value / msg.value == 1300
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 1300 * msg.value
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.addToAllocation(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (1300 * msg.value)
        require ext_call.success
        emit CrowdsaleContribution(msg.value, 1300 * msg.value, arg1);
        return (1300 * msg.value)
    if block.timestamp < 1511383114:
        if msg.value:
            require msg.value
            require 1200 * msg.value / msg.value == 1200
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 1200 * msg.value
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.addToAllocation(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (1200 * msg.value)
        require ext_call.success
        emit CrowdsaleContribution(msg.value, 1200 * msg.value, arg1);
        return (1200 * msg.value)
    if block.timestamp >= 1511987914:
        if msg.value:
            require msg.value
            require 1000 * msg.value / msg.value == 1000
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 1000 * msg.value
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.addToAllocation(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (1000 * msg.value)
        require ext_call.success
        emit CrowdsaleContribution(msg.value, 1000 * msg.value, arg1);
        return (1000 * msg.value)
    if msg.value:
        require msg.value
        require 1150 * msg.value / msg.value == 1150
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), 1150 * msg.value
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.addToAllocation(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (1150 * msg.value)
    require ext_call.success
    emit CrowdsaleContribution(msg.value, 1150 * msg.value, arg1);
    return (1150 * msg.value)
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= 1510173514
    require block.timestamp < 1512938285
    require tokenAddress
    if block.timestamp < 1510778314:
        if msg.value:
            require msg.value
            require 1300 * msg.value / msg.value == 1300
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 1300 * msg.value
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.addToAllocation(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (1300 * msg.value)
        require ext_call.success
        emit CrowdsaleContribution(msg.value, 1300 * msg.value, msg.sender);
    else:
        if block.timestamp < 1511383114:
            if msg.value:
                require msg.value
                require 1200 * msg.value / msg.value == 1200
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1200 * msg.value
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.addToAllocation(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args (1200 * msg.value)
            require ext_call.success
            emit CrowdsaleContribution(msg.value, 1200 * msg.value, msg.sender);
        else:
            if block.timestamp >= 1511987914:
                if msg.value:
                    require msg.value
                    require 1000 * msg.value / msg.value == 1000
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor5)
                call stor5.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1000 * msg.value
                require ext_call.success
                require ext_code.size(stor5)
                call stor5.addToAllocation(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (1000 * msg.value)
                require ext_call.success
                emit CrowdsaleContribution(msg.value, 1000 * msg.value, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 1150 * msg.value / msg.value == 1150
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor5)
                call stor5.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1150 * msg.value
                require ext_call.success
                require ext_code.size(stor5)
                call stor5.addToAllocation(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (1150 * msg.value)
                require ext_call.success
                emit CrowdsaleContribution(msg.value, 1150 * msg.value, msg.sender);
}



}

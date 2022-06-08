contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = (277500 * 10^18 * 24 * 3600)


address owner;
address stor1;
address sub_bf59f209Address;
uint256 AVAILABLE_TOTAL_SUPPLY;
uint256 AVAILABLE_PRESALE_SUPPLY;
uint256 AVAILABLE_FOUNDER_SUPPLY;
uint256 AVAILABLE_AIRDROP_SUPPLY;
uint256 AVAILABLE_ADVISOR_SUPPLY;
uint256 AVAILABLE_RESERVE_SUPPLY;
uint256 AVAILABLE_BONUS1_SUPPLY;
uint256 AVAILABLE_BONUS2_SUPPLY;
uint256 AVAILABLE_BONUS3_SUPPLY;
uint256 grandTotalClaimed;
uint256 startTime;
mapping of struct allocations;
mapping of uint8 stor15;
mapping of uint8 stor16;

function airdropAdmins(address arg1) {
    return bool(stor15[arg1])
}

function AVAILABLE_PRESALE_SUPPLY() {
    return AVAILABLE_PRESALE_SUPPLY
}

function AVAILABLE_AIRDROP_SUPPLY() {
    return AVAILABLE_AIRDROP_SUPPLY
}

function AVAILABLE_BONUS3_SUPPLY() {
    return AVAILABLE_BONUS3_SUPPLY
}

function AVAILABLE_BONUS1_SUPPLY() {
    return AVAILABLE_BONUS1_SUPPLY
}

function AVAILABLE_FOUNDER_SUPPLY() {
    return AVAILABLE_FOUNDER_SUPPLY
}

function allocations(address arg1) {
    return allocations[arg1].field_0, 
           allocations[arg1].field_256,
           allocations[arg1].field_512,
           allocations[arg1].field_768,
           allocations[arg1].field_1024
}

function startTime() {
    return startTime
}

function airdrops(address arg1) {
    return bool(stor16[arg1])
}

function owner() {
    return owner
}

function grandTotalClaimed() {
    return grandTotalClaimed
}

function AVAILABLE_TOTAL_SUPPLY() {
    return AVAILABLE_TOTAL_SUPPLY
}

function sub_bf59f209(?) {
    return sub_bf59f209Address
}

function AVAILABLE_BONUS2_SUPPLY() {
    return AVAILABLE_BONUS2_SUPPLY
}

function AVAILABLE_ADVISOR_SUPPLY() {
    return AVAILABLE_ADVISOR_SUPPLY
}

function AVAILABLE_RESERVE_SUPPLY() {
    return AVAILABLE_RESERVE_SUPPLY
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function grandTotalAllocated() {
    return (-AVAILABLE_TOTAL_SUPPLY + (277500 * 10^18 * 24 * 3600))
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function refundTokens(address arg1, address arg2) {
    require owner == msg.sender
    require sub_bf59f209Address != arg2
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferTokens(address arg1) {
    require allocations[address(arg1)].field_1024 <= allocations[address(arg1)].field_768
    allocations[address(arg1)].field_1024 = allocations[address(arg1)].field_768
    require ext_code.size(sub_bf59f209Address)
    call sub_bf59f209Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
    grandTotalClaimed = allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024 + grandTotalClaimed
    emit 0x51533bc4: allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024, allocations[address(arg1)].field_768, allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024 + grandTotalClaimed, arg1, allocations[address(arg1)].field_0
}

function setAllocation(address arg1, uint256 arg2, uint8 arg3) {
    require owner == msg.sender
    require allocations[address(arg1)].field_768 >= 0
    require arg2 > 0
    require arg3 <= 7
    require arg3 >= 0
    require arg3 <= 7
    require arg1
    require arg3 <= 7
    if not arg3:
        require arg2 <= AVAILABLE_PRESALE_SUPPLY
        AVAILABLE_PRESALE_SUPPLY -= arg2
        allocations[address(arg1)].field_0 = 0
        allocations[address(arg1)].field_256 = 0
        allocations[address(arg1)].field_256 = startTime
        allocations[address(arg1)].field_512 = startTime
        allocations[address(arg1)].field_768 = arg2
        allocations[address(arg1)].field_1024 = 0
    else:
        require arg3 <= 7
        if arg3 == 1:
            require arg2 <= AVAILABLE_FOUNDER_SUPPLY
            AVAILABLE_FOUNDER_SUPPLY -= arg2
            allocations[address(arg1)].field_0 = 1
            allocations[address(arg1)].field_256 = startTime
            allocations[address(arg1)].field_512 = startTime
            allocations[address(arg1)].field_768 = arg2
            allocations[address(arg1)].field_1024 = 0
        else:
            require arg3 <= 7
            if arg3 == 3:
                require arg2 <= AVAILABLE_ADVISOR_SUPPLY
                AVAILABLE_ADVISOR_SUPPLY -= arg2
                allocations[address(arg1)].field_0 = 3
                allocations[address(arg1)].field_256 = startTime
                allocations[address(arg1)].field_512 = startTime
                allocations[address(arg1)].field_768 = arg2
                allocations[address(arg1)].field_1024 = 0
            else:
                require arg3 <= 7
                if arg3 == 4:
                    require arg2 <= AVAILABLE_RESERVE_SUPPLY
                    AVAILABLE_RESERVE_SUPPLY -= arg2
                    allocations[address(arg1)].field_0 = 4
                    allocations[address(arg1)].field_256 = startTime
                    allocations[address(arg1)].field_512 = startTime
                    allocations[address(arg1)].field_768 = arg2
                    allocations[address(arg1)].field_1024 = 0
                else:
                    require arg3 <= 7
                    if arg3 == 5:
                        require arg2 <= AVAILABLE_BONUS1_SUPPLY
                        AVAILABLE_BONUS1_SUPPLY -= arg2
                        allocations[address(arg1)].field_0 = 5
                        allocations[address(arg1)].field_256 = startTime
                        allocations[address(arg1)].field_512 = startTime
                        allocations[address(arg1)].field_768 = arg2
                        allocations[address(arg1)].field_1024 = 0
                    else:
                        require arg3 <= 7
                        if arg3 == 6:
                            require arg2 <= AVAILABLE_BONUS2_SUPPLY
                            AVAILABLE_BONUS2_SUPPLY -= arg2
                            allocations[address(arg1)].field_0 = 6
                            allocations[address(arg1)].field_256 = startTime
                            allocations[address(arg1)].field_512 = startTime
                            allocations[address(arg1)].field_768 = arg2
                            allocations[address(arg1)].field_1024 = 0
                        else:
                            require arg3 <= 7
                            if arg3 == 7:
                                require arg2 <= AVAILABLE_BONUS3_SUPPLY
                                AVAILABLE_BONUS3_SUPPLY -= arg2
                                allocations[address(arg1)].field_0 = 7
                                allocations[address(arg1)].field_256 = startTime
                                allocations[address(arg1)].field_512 = startTime
                                allocations[address(arg1)].field_768 = arg2
                                allocations[address(arg1)].field_1024 = 0
    require arg2 <= AVAILABLE_TOTAL_SUPPLY
    AVAILABLE_TOTAL_SUPPLY -= arg2
    require arg3 <= 7
    emit LogNewAllocation(arg2, -AVAILABLE_TOTAL_SUPPLY + (277500 * 10^18 * 24 * 3600), arg1, arg3);
}



}

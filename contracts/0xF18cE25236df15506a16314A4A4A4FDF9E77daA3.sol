contract main {




// =====================  Runtime code  =====================


uint256 icoEndBlock;
address beneficiaryAddress;
uint256 firstTeamWithdrawal;
uint256 secondTeamWithdrawal;
uint256 thirdTeamWithdrawal;
uint256 fourthTeamWithdrawal;
uint256 fifthTeamWithdrawal;
uint256 sixthTeamWithdrawal;
uint256 seventhTeamWithdrawal;
uint256 eighthTeamWithdrawal;
uint8 phase; offset 224
uint32 stor10; offset 224
address eRC20TokenAddress; offset 64

function firstTeamWithdrawal() {
    return firstTeamWithdrawal
}

function eighthTeamWithdrawal() {
    return eighthTeamWithdrawal
}

function secondTeamWithdrawal() {
    return secondTeamWithdrawal
}

function fifthTeamWithdrawal() {
    return fifthTeamWithdrawal
}

function beneficiary() {
    return beneficiaryAddress
}

function icoEndBlock() {
    return icoEndBlock
}

function fourthTeamWithdrawal() {
    return fourthTeamWithdrawal
}

function seventhTeamWithdrawal() {
    return seventhTeamWithdrawal
}

function thirdTeamWithdrawal() {
    return thirdTeamWithdrawal
}

function ERC20Token() {
    return eRC20TokenAddress
}

function sixthTeamWithdrawal() {
    return sixthTeamWithdrawal
}

function phase() {
    require phase <= 8
    return phase
}

function _fallback() payable {
    revert
}

function changeBeneficiary(address arg1) {
    require arg1
    require msg.sender == beneficiaryAddress
    beneficiaryAddress = arg1
}

function changeIcoEndBlock(uint256 arg1) {
    require msg.sender == beneficiaryAddress
    require block.number < icoEndBlock
    require block.number < arg1
    icoEndBlock = arg1
}

function checkBalance() {
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawOtherEDEX(address arg1) {
    require msg.sender == beneficiaryAddress
    require arg1
    require arg1 != eRC20TokenAddress
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
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawal() {
    require msg.sender == beneficiaryAddress
    require block.number > icoEndBlock
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require phase <= 8
    if phase == 8:
        require block.timestamp > eighthTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require phase <= 8
    if phase == 7:
        require block.timestamp > seventhTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if phase == 6:
        require block.timestamp > sixthTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if phase == 5:
        require block.timestamp > fifthTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if phase == 4:
        require block.timestamp > fourthTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if phase == 3:
        require block.timestamp > thirdTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if phase == 2:
        require block.timestamp > secondTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if phase == 1:
        require block.timestamp > firstTeamWithdrawal
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
    require phase <= 8
    if not phase:
        firstTeamWithdrawal = block.timestamp + (2184 * 24 * 3600)
        secondTeamWithdrawal = firstTeamWithdrawal + (2184 * 24 * 3600)
        thirdTeamWithdrawal = secondTeamWithdrawal + (2184 * 24 * 3600)
        fourthTeamWithdrawal = thirdTeamWithdrawal + (2184 * 24 * 3600)
        fifthTeamWithdrawal = fourthTeamWithdrawal + (2184 * 24 * 3600)
        sixthTeamWithdrawal = fifthTeamWithdrawal + (2184 * 24 * 3600)
        seventhTeamWithdrawal = sixthTeamWithdrawal + (2184 * 24 * 3600)
        eighthTeamWithdrawal = seventhTeamWithdrawal + (2184 * 24 * 3600)
        if not ext_call.return_data[0]:
            require ext_code.size(eRC20TokenAddress)
            call eRC20TokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, 0
        else:
            require ext_call.return_data[0]
            require 6 * ext_call.return_data[0] / ext_call.return_data[0] == 6
            require ext_code.size(eRC20TokenAddress)
            call eRC20TokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, 6 * ext_call.return_data[0] / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require phase <= 8
        require phase + 1 <= 8
        stor10 = uint32(phase + 1)
}



}

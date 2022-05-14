contract main {




// =====================  Runtime code  =====================


const preSaleStartTime = block.timestamp

const mainSaleEndTime = (426710 * 3600)

const mainSaleStartTime = (425270 * 3600)

const preSaleEndTime = (block.timestamp + (720 * 24 * 3600))


address owner;
mapping of uint256 contributors;
address stor2;
uint256 weiRaised;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address tokenAddress;

function contributors(address arg1) {
    return contributors[arg1]
}

function weiRaised() {
    return weiRaised
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function sub_038f47d3(?) {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 1
}

function sub_cbdc3547(?) {
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function isContributionAllowed() {
    if block.timestamp >= block.timestamp:
        require block.timestamp + (720 * 24 * 3600) >= block.timestamp
        if block.timestamp <= block.timestamp + (720 * 24 * 3600):
            return not bool(uint8(stor4.field_160))
    if block.timestamp < 425270 * 3600:
        return 0
    if block.timestamp > 426710 * 3600:
        return 0
    return not bool(uint8(stor4.field_168))
}

function TransferToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require arg1
    contributors[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokensTransferred(arg2, arg1);
}

function _fallback() payable {
    require msg.sender
    require msg.value >= 10^17
    if block.timestamp < block.timestamp:
        require block.timestamp >= 425270 * 3600
        require block.timestamp <= 426710 * 3600
        require not uint8(stor4.field_168)
    else:
        require block.timestamp + (720 * 24 * 3600) >= block.timestamp
        if block.timestamp <= block.timestamp + (720 * 24 * 3600):
            require not uint8(stor4.field_160)
        else:
            require block.timestamp >= 425270 * 3600
            require block.timestamp <= 426710 * 3600
            require not uint8(stor4.field_168)
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require contributors[address(msg.sender)] + msg.value >= contributors[address(msg.sender)]
    contributors[address(msg.sender)] += msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit ContributionReceived(msg.value, msg.sender);
}



}

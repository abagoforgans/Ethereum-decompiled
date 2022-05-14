contract main {




// =====================  Runtime code  =====================


uint256 openingTime;
uint256 closingTime;
uint256 constructionTime;
mapping of uint256 tokens;
address stor4;
uint256 totalDeposited;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payees;

function totalShares() {
    return totalShares
}

function closingTime() {
    return closingTime
}

function payees(uint256 arg1) {
    require arg1 < payees.length
    return payees[arg1]
}

function released(address arg1) {
    return released[arg1]
}

function openingTime() {
    return openingTime
}

function shares(address arg1) {
    return shares[arg1]
}

function totalReleased() {
    return totalReleased
}

function tokens(address arg1) {
    return tokens[arg1]
}

function constructionTime() {
    return constructionTime
}

function totalDeposited() {
    return totalDeposited
}

function _fallback() payable {
    revert
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function depositToken(uint256 arg1) {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    totalDeposited += arg1
    tokens[address(msg.sender)] += arg1
    emit DepositReceived(msg.sender, arg1);
    require msg.sender
    require arg1 > 0
    if shares[address(msg.sender)]:
        require shares[address(msg.sender)] > 0
        shares[address(msg.sender)] += arg1
    else:
        require not shares[address(msg.sender)]
        payees.length++
        payees[payees.length] = msg.sender
        shares[address(msg.sender)] = arg1
    require arg1 + totalShares >= totalShares
    totalShares += arg1
}

function claim() {
    require block.timestamp > closingTime
    require 0 < shares[address(msg.sender)]
    require totalShares
    require ((totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
    require ((totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] <= totalDeposited
    released[address(msg.sender)] = (totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares
    totalReleased = ((totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] + totalReleased
    totalDeposited = totalDeposited - ((totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares) + released[address(msg.sender)]
    tokens[address(msg.sender)] = tokens[address(msg.sender)] - ((totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares) + released[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ((totalReleased * shares[address(msg.sender)]) + (totalDeposited * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}

contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const REFUND_PERCENT = 80

const MAINTENANCE_FEE_PERCENT = 5


address stor0;
uint256 admin_profit;
uint256 currentActiveGameID;
array of struct games;

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_0, 
           games[arg1].field_256,
           games[arg1].field_512,
           games[arg1].field_768,
           games[arg1].field_1024,
           games[arg1].field_1536,
           games[arg1].field_1536,
           games[arg1].field_1536,
           games[arg1].field_1792
}

function admin_profit() {
    return admin_profit
}

function getNumGames() {
    return games.length
}

function currentActiveGameID() {
    return currentActiveGameID
}

function getNumTicketsPurchased(uint256 arg1, address arg2) {
    require arg1 < games.length
    return stor[(8 * arg1) + ('name', 'games', 3) + 5][address(arg2)].field_0
}

function _fallback() payable {
    admin_profit += msg.value
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function setCurrentActiveGameID(uint256 arg1) {
    require msg.sender == stor0
    currentActiveGameID = arg1
}

function getAdminFee() {
    require msg.sender == stor0
    require admin_profit > 0
    call msg.sender with:
       value admin_profit wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    admin_profit = 0
}

function getUnclaimedEtherIfAny(uint256 arg1) {
    require msg.sender == stor0
    require arg1 < games.length
    require block.timestamp >= games[arg1].field_1024
    require arg1 < games.length
    require games[arg1].field_1792 > 0
    require arg1 < games.length
    call msg.sender with:
       value games[arg1].field_1792 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < games.length
    games[arg1].field_1792 = 0
}

function createGame(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint8 arg6) {
    require msg.sender == stor0
    games.length++
    games[games.length].field_0 = arg1
    games[games.length].field_256 = arg2
    games[games.length].field_512 = arg2 + (24 * 3600 * arg3)
    games[games.length].field_768 = arg2 + (24 * 3600 * arg3) + (24 * 3600 * arg4)
    games[games.length].field_1024 = arg2 + (24 * 3600 * arg3) + (24 * 3600 * arg4) + (24 * 3600 * arg5)
    games[games.length].field_1536 = 0
    games[games.length].field_1792 = 0
    games[games.length].field_1544 = 0
    games[games.length].field_1792 = 0
    games[games.length].field_1552 = arg6
    games[games.length].field_1792 = 0
}

function purchaseTicket(uint256 arg1) payable {
    require arg1 < games.length
    require msg.value >= games[arg1].field_0
    require arg1 < games.length
    require block.timestamp >= games[arg1].field_256
    require arg1 < games.length
    require block.timestamp < games[arg1].field_512
    require arg1 < games.length
    stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 = uint8(stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 + 1)
    games[arg1].field_1536 = uint8(games[arg1].field_1536 + 1)
    admin_profit += 5 * games[arg1].field_0 / 100
    require arg1 < games.length
    games[arg1].field_1792 = games[arg1].field_1792 + msg.value - (5 * games[arg1].field_0 / 100)
}

function getRefund(uint256 arg1) {
    require arg1 < games.length
    require block.timestamp < games[arg1].field_768 - (24 * 3600)
    require arg1 < games.length
    require stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 > 0
    require arg1 < games.length
    stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 = uint8(stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 - 1)
    games[arg1].field_1536 = uint8(games[arg1].field_1536 - 1)
    require arg1 < games.length
    admin_profit += 15 * games[arg1].field_0 / 100
    require arg1 < games.length
    require arg1 < games.length
    games[arg1].field_1792 -= 95 * games[arg1].field_0 / 100
    call msg.sender with:
       value 80 * games[arg1].field_0 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimProfit(uint256 arg1) {
    require arg1 < games.length
    require block.timestamp >= games[arg1].field_768
    require arg1 < games.length
    require block.timestamp < games[arg1].field_1024
    require arg1 < games.length
    require stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 > 0
    require arg1 < games.length
    require games[arg1].field_1552
    require arg1 < games.length
    require games[arg1].field_1544 < uint8(games[arg1].field_1536 / games[arg1].field_1552)
    require arg1 < games.length
    games[arg1].field_1544 = uint8(games[arg1].field_1544 + 1)
    stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 = uint8(stor[(8 * arg1) + ('name', 'games', 3) + 5][address(msg.sender)].field_0 - 1)
    call msg.sender with:
       value 95 * games[arg1].field_0 * games[arg1].field_1552 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < games.length
    games[arg1].field_1792 -= 95 * games[arg1].field_0 * games[arg1].field_1552 / 100
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[81 len 1144]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalWithdrew;
uint256 userNumber;
mapping of uint256 users;
mapping of uint256 usersWithdrew;

function userNumber() {
    return userNumber
}

function usersAddress(address arg1) {
    return users[arg1]
}

function usersWithdrew(address arg1) {
    return usersWithdrew[arg1]
}

function owner() {
    return owner
}

function totalWithdrew() {
    return totalWithdrew
}

function _fallback() payable {
  stop
}

function AddUser(address arg1) {
    require owner == msg.sender
    if not users[address(arg1)]:
        users[address(arg1)] = 1
        userNumber++
        emit LogAddUser(arg1);
}

function RemoveUser(address arg1) {
    require owner == msg.sender
    if 1 == users[address(arg1)]:
        users[address(arg1)] = 0
        userNumber--
        emit LogRmUser(arg1);
}

function Withdrew() {
    require users[address(msg.sender)]
    require userNumber
    usersWithdrew[address(msg.sender)] = eth.balance(this.address) + totalWithdrew / userNumber
    totalWithdrew = (eth.balance(this.address) + totalWithdrew / userNumber) - usersWithdrew[address(msg.sender)] + totalWithdrew
    require (eth.balance(this.address) + totalWithdrew / userNumber) - usersWithdrew[address(msg.sender)] > 0
    call msg.sender with:
       value (eth.balance(this.address) + totalWithdrew / userNumber) - usersWithdrew[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWithdrew(msg.sender, (eth.balance(this.address) + totalWithdrew / userNumber) - usersWithdrew[address(msg.sender)]);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of address stor5;
mapping of struct stor6;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 250
    stor6[address(this.address)].field_0 = this.address
    stor6[address(this.address)].field_160 = 200
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = this.address
    return code.data[286 len 2750]
}



// =====================  Runtime code  =====================


#
#  - MaxChildLevel(address arg1)
#
address stor0;
uint256 regCost;
uint256 firstLevelCost;
uint256 secondLevelCost;
uint256 parentFee;
array of struct stor5;
mapping of struct users;

function SecondLevelCost() {
    return secondLevelCost
}

function UsersNumber() {
    return stor5.length
}

function Users(address arg1) {
    return users[arg1].field_0, users[arg1].field_160
}

function ParentFee() {
    return parentFee
}

function RegCost() {
    return regCost
}

function FirstLevelCost() {
    return firstLevelCost
}

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function ChangeOwner(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function TakeMoney() {
    if stor0 != msg.sender:
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function ChangeRules(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if stor0 == msg.sender:
        parentFee = arg4
        firstLevelCost = arg2
        secondLevelCost = arg3
        regCost = arg1
}

function NewUser() payable {
    require msg.value >= regCost
    require not users[address(msg.sender)].field_0
    users[address(msg.sender)].field_0 = this.address
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[stor5.length].field_0 = msg.sender
    emit newuser(msg.sender, this.address);
}

function NewUser(address arg1) payable {
    require msg.value >= regCost
    require not users[address(msg.sender)].field_0
    require users[address(arg1)].field_0
    if arg1 != this.address:
        call arg1 with:
           value regCost wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    users[address(msg.sender)].field_0 = arg1
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[stor5.length].field_0 = msg.sender
    emit newuser(msg.sender, arg1);
}

function UsersList() {
    if stor5.length:
        mem[160] = address(stor5.field_0)
        idx = 160
        s = 0
        while (32 * stor5.length) + 128 > idx:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor5.length) + 160] = 32
    mem[(32 * stor5.length) + 192] = stor5.length
    if Mask(251, 0, stor5.length):
        mem[(32 * stor5.length) + 224] = mem[160]
        mem[(32 * stor5.length) + 256 len floor32((32 * stor5.length) - 1)] = mem[192 len floor32((32 * stor5.length) - 1)]
    return Array(len=stor5.length, data=mem[(32 * stor5.length) + 224 len 32 * stor5.length])
}

function BuyLevel() payable {
    if not users[address(msg.sender)].field_160:
        require msg.value >= firstLevelCost
        require users[address(msg.sender)].field_0
        s = users[address(msg.sender)].field_0
        while users[users[address(msg.sender)].field_0].field_160 < uint8(users[address(msg.sender)].field_160 + 1):
            mem[0] = users[address(s)].field_0
            mem[32] = 6
            s = users[address(s)].field_0
            continue 
        if address(s) != this.address:
            call address(s) with:
               value (1000 * firstLevelCost / 1000) - (parentFee * firstLevelCost / 1000) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if users[address(s)].field_0 != this.address:
                if parentFee:
                    call users[address(s)].field_0 with:
                       value firstLevelCost / 1000 * parentFee wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require 5^users[address(msg.sender)].field_160
        require msg.value >= 2 * 8^users[address(msg.sender)].field_160 * secondLevelCost / 5^users[address(msg.sender)].field_160
        require users[address(msg.sender)].field_0
        s = users[address(msg.sender)].field_0
        while users[users[address(msg.sender)].field_0].field_160 < uint8(users[address(msg.sender)].field_160 + 1):
            mem[0] = users[address(s)].field_0
            mem[32] = 6
            s = users[address(s)].field_0
            continue 
        if address(s) != this.address:
            call address(s) with:
               value (1000 * 2 * 8^users[address(msg.sender)].field_160 * secondLevelCost / 5^users[address(msg.sender)].field_160 / 1000) - (parentFee * 2 * 8^users[address(msg.sender)].field_160 * secondLevelCost / 5^users[address(msg.sender)].field_160 / 1000) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if users[address(s)].field_0 != this.address:
                if parentFee:
                    call users[address(s)].field_0 with:
                       value 2 * 8^users[address(msg.sender)].field_160 * secondLevelCost / 5^users[address(msg.sender)].field_160 / 1000 * parentFee wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    users[address(msg.sender)].field_160 = uint8(users[address(msg.sender)].field_160 + 1)
    emit levelup(msg.sender, uint8(users[address(msg.sender)].field_160 + 1));
}



}

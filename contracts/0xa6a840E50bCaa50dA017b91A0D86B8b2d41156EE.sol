contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
uint32 stor5; offset 224
uint64 stor5; offset 160
uint256 stor6;

function _fallback() payable {
    uint32(stor5.field_224) = 0
    stor6 = 0
    require not msg.value
    require code.data[8839 len 20]
    stor3 = msg.sender
    stor4 = code.data[8839 len 20]
    uint64(stor5.field_160) = uint64(block.timestamp)
    return code.data[322 len 8505]
}



// =====================  Runtime code  =====================


const name = 'EchoLink'

const decimals = 18

const symbol = 'EKO'

const TOKENS_HARD_CAP = 500000000 * 10^18

const GOAL = 25000000 * 10^18

const TOKENS_SALE_HARD_CAP = 250000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address saleTeamAddress;
uint8 stor5; offset 224
uint32 stor5; offset 224
uint64 stor5; offset 160
address timelockContractAddress;
uint256 issueIndex;

function totalSupply() {
    return totalSupply
}

function issueIndex() {
    return issueIndex
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function timelockContractAddress() {
    return timelockContractAddress
}

function owner() {
    return owner
}

function saleTeamAddress() {
    return saleTeamAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenSaleClosed() {
    return bool(uint8(stor5.field_224))
}

function _fallback() payable {
    revert
}

function saleHardCapReached() {
    return totalSupply >= 250000000 * 10^18
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    if saleTeamAddress != msg.sender:
        require msg.sender == owner
    require totalSupply < 250000000 * 10^18
    require not uint8(stor5.field_224)
    require arg1
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= 250000000 * 10^18
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    issueIndex++
    emit Issue(issueIndex, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function close(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor5.field_224)
    if totalSupply >= 25000000 * 10^18:
        emit SaleSucceeded()
    else:
        emit SaleFailed()
    require totalSupply + arg1 >= totalSupply
    require totalSupply + arg1 <= 500000000 * 10^18
    totalSupply += arg1
    create contract with 0 wei
                    code: code.data[7076 len 1386], address(this.address), owner, uint64(uint64(stor5.field_160) + (2400 * 24 * 3600))
    require create.new_address
    timelockContractAddress = address(create.new_address)
    require balanceOf[address(stor5.field_0)] + arg1 >= balanceOf[address(stor5.field_0)]
    balanceOf[address(stor5.field_0)] += arg1
    issueIndex++
    emit Issue(issueIndex, timelockContractAddress, arg1);
    uint32(stor5.field_224) = 1
}



}

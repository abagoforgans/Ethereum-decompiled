contract main {


// =======================  Init code  ======================


uint256 stor0;
uint16 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor9;
address stor10;
uint256 stor11;

function _fallback() payable {
    stor11 = 0
    require not msg.value
    require block.number <= code.data[6103 len 32]
    require code.data[6103 len 32] <= code.data[6167 len 32]
    require code.data[6167 len 32] <= code.data[6135 len 32]
    require code.data[6211 len 20]
    require code.data[6243 len 20]
    require code.data[6243 len 20] != code.data[6211 len 20]
    stor4 = 0
    stor5 = code.data[6103 len 32]
    stor6 = code.data[6135 len 32]
    stor7 = code.data[6167 len 32]
    stor0 = 0
    stor9 = code.data[6211 len 20]
    stor10 = code.data[6243 len 20]
    return code.data[272 len 5831]
}



// =====================  Runtime code  =====================


const name = 'Pre-Leo Token'

const decimals = 18

const version = '0.9'

const symbol = 'PXLT'

const TOKEN_SECOND_EXCHANGE_RATE = 175

const TOKEN_FIRST_EXCHANGE_RATE = 200

const ETH_RECEIVED_MIN = 10000 * 10^18

const ETH_RECEIVED_CAP = 50000 * 10^18

const TOKEN_MIN = 10^18

const TOKEN_CREATION_CAP = 10000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct redeemers;
bool stor4; offset 256
uint8 state;
uint8 stor4; offset 8
uint256 stor4; offset 8
uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint256 exchangeRateChangesBlock;
uint256 sub_3b9ec3ff;
address admin1Address;
address admin2Address;
uint256 totalReceivedEth;
mapping of uint256 stor12;
mapping of uint256 stor13;

function admin2() {
    return admin2Address
}

function admin1() {
    return admin1Address
}

function totalSupply() {
    return totalSupply
}

function exchangeRateChangesBlock() {
    return exchangeRateChangesBlock
}

function sub_3b9ec3ff(?) {
    return sub_3b9ec3ff
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalReceivedEth() {
    return totalReceivedEth
}

function fundingEndBlock() {
    return fundingEndBlock
}

function getBalanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function redeemers(uint256 arg1) {
    mem[192] = redeemers[arg1][1].field_0
    idx = 192
    s = 0
    while redeemers[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = redeemers[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return redeemers[arg1].field_0, 
           Array(len=redeemers[arg1][1].length, data=mem[192 len redeemers[arg1][1].length + (floor32(redeemers[arg1][1].length - 1) + -redeemers[arg1][1].length + 32 % 32)])
}

function state() {
    require state <= 3
    return state
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    require 68 == calldata.size
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require 68 == calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function proceed() {
    require state <= 3
    require state == 3
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor13[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor13[stor9] == stor13[stor10]:
        require uint8(stor4.field_8) <= 3
        state = uint8(stor4.field_8)
        stor13[stor9] = 0
        stor13[stor10] = 0
}

function pause() {
    require state <= 3
    require state != 3
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor13[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor13[stor9] == stor13[stor10]:
        require state <= 3
        Mask(248, 0, stor4.field_8) = state
        state = 3
        stor13[stor9] = 0
        stor13[stor10] = 0
}

function startRedeeming() {
    require state <= 3
    require state == 1
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor13[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor13[stor9] == stor13[stor10]:
        state = 2
        state = 2
        uint8(stor4.field_8) = 2
        stor4.field_256 % 1 = 0
        stor13[stor9] = 0
        stor13[stor10] = 0
}

function retrieveEth(uint256 arg1, address arg2) {
    require totalReceivedEth >= 10000 * 10^18
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor13[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor13[stor9] == stor13[stor10]:
        require arg1 <= eth.balance(this.address)
        require arg2
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor13[stor9] = 0
        stor13[stor10] = 0
}

function transfer(address arg1, uint256 arg2) {
    require state <= 3
    require state == 1
    require 68 == calldata.size
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function refund() {
    require state <= 3
    if state:
        require state <= 3
        require state == 3
        require uint8(stor4.field_8) <= 3
        require not uint8(stor4.field_8)
    require block.number > fundingEndBlock
    require totalReceivedEth < 10000 * 10^18
    require balanceOf[address(msg.sender)] > 0
    require stor12[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    stor12[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund(stor12[address(msg.sender)], msg.sender);
    call msg.sender with:
       value stor12[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize(address arg1) {
    require state <= 3
    require not state
    require totalReceivedEth >= 10000 * 10^18
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor13[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor13[stor9] == stor13[stor10]:
        if block.number <= fundingEndBlock:
            if totalSupply < 10000000 * 10^18:
                require totalReceivedEth >= 50000 * 10^18
        require arg1
        state = 1
        uint8(stor4.field_8) = 1
        stor4.field_256 % 1 = 0
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor13[stor9] = 0
        stor13[stor10] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 3
    require state == 1
    require 100 == calldata.size
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[arg1] >= arg3
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function redeemTokens(string arg1) {
    require state <= 3
    require state == 2
    require balanceOf[address(msg.sender)] >= 10^18
    require arg1.length > 0
    redeemers[stor8].field_0 = msg.sender
    redeemers[stor8][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_3b9ec3ff++
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[0] + balanceOf[address(msg.sender)] > balanceOf[0]
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] + balanceOf[0] >= balanceOf[0]
    require balanceOf[address(msg.sender)] + balanceOf[0] >= balanceOf[address(msg.sender)]
    balanceOf[0] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    emit LogRedeemPXLT(balanceOf[address(msg.sender)], Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function createTokens() payable {
    require state <= 3
    require not state
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value > 0
    require msg.value + totalReceivedEth >= totalReceivedEth
    require msg.value + totalReceivedEth >= msg.value
    require msg.value + totalReceivedEth <= 50000 * 10^18
    if block.number >= exchangeRateChangesBlock:
        if msg.value:
            require msg.value
            require 175 * msg.value / msg.value == 175
        require 175 * msg.value >= 10^18
        require (175 * msg.value) + totalSupply >= totalSupply
        require (175 * msg.value) + totalSupply >= 175 * msg.value
        require (175 * msg.value) + totalSupply <= 10000000 * 10^18
        require msg.value + stor12[address(msg.sender)] >= stor12[address(msg.sender)]
        require msg.value + stor12[address(msg.sender)] >= msg.value
        stor12[address(msg.sender)] += msg.value
        totalReceivedEth += msg.value
        totalSupply += 175 * msg.value
        balanceOf[address(msg.sender)] += 175 * msg.value
        emit LogCreatePXLT((175 * msg.value), msg.sender);
    else:
        if msg.value:
            require msg.value
            require 200 * msg.value / msg.value == 200
        require 200 * msg.value >= 10^18
        require (200 * msg.value) + totalSupply >= totalSupply
        require (200 * msg.value) + totalSupply >= 200 * msg.value
        require (200 * msg.value) + totalSupply <= 10000000 * 10^18
        require msg.value + stor12[address(msg.sender)] >= stor12[address(msg.sender)]
        require msg.value + stor12[address(msg.sender)] >= msg.value
        stor12[address(msg.sender)] += msg.value
        totalReceivedEth += msg.value
        totalSupply += 200 * msg.value
        balanceOf[address(msg.sender)] += 200 * msg.value
        emit LogCreatePXLT((200 * msg.value), msg.sender);
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor6;
address stor8;

function _fallback() {
    stor8 = msg.sender
    stor0 = 1000000000 * 10^18
    stor6[address(msg.sender)] = 1000000000 * 10^18
    return code.data[99 len 4138]
}



// =====================  Runtime code  =====================


const name = 'HashParadise'

const decimals = 18

const version = '1.0'

const symbol = 'HAPC'


uint256 totalSupply;
mapping of address sub_c1a4e416;
mapping of address sub_6c41a473;
mapping of address stor3;
mapping of uint256 stor4;
uint256 gameNumber;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

function totalSupply() {
    return totalSupply
}

function sub_6c41a473(?) {
    return sub_6c41a473[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_c1a4e416(?) {
    return sub_c1a4e416[address(arg1)]
}

function gameNumber() {
    return gameNumber
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_efc7377a(?) {
    if not stor3[arg1]:
        return 0
    return stor3[arg1], sub_c1a4e416[stor3[arg1]]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function deleteGame(address arg1) {
    require owner == msg.sender
    if sub_c1a4e416[address(arg1)]:
        stor4[address(arg1)] = 0
        stor3[stor4[address(arg1)]] = 0
        sub_c1a4e416[address(arg1)] = 0
        sub_6c41a473[stor1[address(arg1)]] = 0
        if stor4[address(arg1)] != gameNumber:
            stor4[stor3[stor5]] = stor4[address(arg1)]
            stor3[stor4[address(arg1)]] = stor3[stor5]
            stor3[stor5] = 0
        gameNumber--
}

function sub_39a79200(?) {
    require owner == msg.sender
    require not sub_6c41a473[address(arg2)]
    require not sub_c1a4e416[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa498742b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(arg2)
    call arg2.0xa498742b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    gameNumber++
    stor4[address(arg1)] = gameNumber + 1
    stor3[stor5 + 1] = arg1
    sub_6c41a473[address(arg2)] = arg1
    sub_c1a4e416[address(arg1)] = arg2
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if sub_c1a4e416[address(arg1)]:
        require not sub_6c41a473[address(arg1)]
    if sub_c1a4e416[address(arg1)]:
        if ext_code.size(arg1):
            call arg1.check(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args arg2
            if ext_call.success:
                require ext_call.return_data[0]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                if ext_code.size(arg1):
                    call arg1.play(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2
                    if ext_call.success:
    else:
        if not sub_6c41a473[address(arg1)]:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        if ext_code.size(arg1):
            call arg1.check(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
            if ext_call.success:
                require ext_call.return_data[0]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[stor2[address(arg1)]] >= balanceOf[stor2[address(arg1)]]
                balanceOf[stor2[address(arg1)]] += arg2
                emit Transfer(arg2, msg.sender, sub_6c41a473[address(arg1)]);
                if ext_code.size(arg1):
                    call arg1.0x7d64ff9a with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2
                    if ext_call.success:
    revert
}



}

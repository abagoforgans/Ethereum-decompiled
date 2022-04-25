contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    emit Admined(msg.sender);
    require code.data[3026 len 20] != msg.sender
    stor3 = 10^16
    stor1[address(msg.sender)] = 88 * 10^14
    stor1[code.data[3026 len 20]] = 119 * 10^13
    stor[code.data[2950 len 32]] = 10^13
    emit code.data[2982 len 32]: stor3, 0, this.address
    emit code.data[2982 len 32]: stor1[address(msg.sender)], this.address, msg.sender
    emit code.data[2982 len 32]: stor1[address(code.data[3014 len 32])], this.address, code.data[3026 len 20]
    emit code.data[2982 len 32]: stor[code.data[2950 len 32]], this.address, 0xfab6368b0f7be60c573a6562d82469b5ed9e7ee6
    return code.data[555 len 2395]
}



// =====================  Runtime code  =====================


const name = 'UnitedARCoin'

const decimals = 8

const version = '1'

const symbol = 'UNR'


address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function transferAdminship(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit TransferAdminship(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burned(arg2, arg1);
}

function mintToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

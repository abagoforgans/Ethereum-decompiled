contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() {
    stor1 = msg.sender
    stor2 = msg.sender
    stor0 = 10 * 10^6
    stor3[address(msg.sender)] = 10 * 10^6
    return code.data[124 len 2545]
}



// =====================  Runtime code  =====================


const name = 'CROM Token'

const decimals = 0

const symbol = 'CROM'

const INITIAL_SUPPLY = 10 * 10^6


uint256 totalSupply;
address owner;
address claimedTokensWalletAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function claimedTokensWallet() {
    return claimedTokensWalletAddress
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function claimTokens(address arg1) {
    require owner == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args claimedTokensWalletAddress, ext_call.return_data[0]
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

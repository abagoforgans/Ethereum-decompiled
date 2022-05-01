contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint16 stor9; offset 80
uint64 stor9; offset 96
uint128 stor9; offset 8
address stor10;

function _fallback() payable {
    stor7 = 10000 * 10^18
    stor8 = 20000000 * 10^18
    require not msg.value
    stor3 = msg.sender
    require not msg.value
    stor1 = 0
    stor4 = code.data[11863 len 20]
    stor5 = code.data[11895 len 20]
    stor6 = code.data[11927 len 20]
    uint8(stor9.field_0) = 7
    Mask(72, 0, stor9.field_8) = 0
    uint16(stor9.field_80) = 10000
    uint64(stor9.field_96) = 0
    stor10 = msg.sender
    return code.data[552 len 11299]
}



// =====================  Runtime code  =====================


const name = 'TrueUSD'

const decimals = 18

const symbol = 'TUSD'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address canReceiveMintWhitelistAddress;
address canBurnWhiteListAddress;
address blackListAddress;
uint256 burnMin;
uint256 burnMax;
uint128 sub_388a7d0e;
uint128 sub_b8e36035; offset 80
address insurerAddress;

function burnMin() {
    return burnMin
}

function totalSupply() {
    return totalSupply
}

function sub_388a7d0e(?) {
    return sub_388a7d0e
}

function canReceiveMintWhitelist() {
    return canReceiveMintWhitelistAddress
}

function canBurnWhiteList() {
    return canBurnWhiteListAddress
}

function burnMax() {
    return burnMax
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_b8e36035(?) {
    return sub_b8e36035
}

function blackList() {
    return blackListAddress
}

function insurer() {
    return insurerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function changeInsurer(address arg1) {
    require msg.sender == owner
    insurerAddress = arg1
}

function sub_73f1caa5(?) {
    require msg.sender == owner
    sub_388a7d0e = Mask(80, 0, arg1)
    sub_b8e36035 = Mask(80, 0, arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeBurnBounds(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= arg2
    burnMin = arg1
    burnMax = arg2
    emit ChangeBurnBoundsEvent(arg1, arg2);
}

function reclaimContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
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

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require ext_code.size(canBurnWhiteListAddress)
    call canBurnWhiteListAddress.0x6f626eb3 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 >= burnMin
    require arg1 <= burnMax
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(canReceiveMintWhitelistAddress)
    call canReceiveMintWhitelistAddress.0x6f626eb3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(blackListAddress)
    call blackListAddress.0x6f626eb3 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(blackListAddress)
    call blackListAddress.0x6f626eb3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not arg2:
        require sub_b8e36035
        require insurerAddress
        require 0 / sub_b8e36035 <= balanceOf[address(arg1)]
        require 0 / sub_b8e36035 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= 0 / sub_b8e36035
        require balanceOf[stor10] + (0 / sub_b8e36035) >= balanceOf[stor10]
        balanceOf[stor10] += 0 / sub_b8e36035
        emit Transfer((0 / sub_b8e36035), arg1, insurerAddress);
    else:
        require arg2
        require arg2 * sub_388a7d0e / arg2 == sub_388a7d0e
        require sub_b8e36035
        require insurerAddress
        require arg2 * sub_388a7d0e / sub_b8e36035 <= balanceOf[address(arg1)]
        require arg2 * sub_388a7d0e / sub_b8e36035 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2 * sub_388a7d0e / sub_b8e36035
        require balanceOf[stor10] + (arg2 * sub_388a7d0e / sub_b8e36035) >= balanceOf[stor10]
        balanceOf[stor10] += arg2 * sub_388a7d0e / sub_b8e36035
        emit Transfer((arg2 * sub_388a7d0e / sub_b8e36035), arg1, insurerAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(blackListAddress)
    call blackListAddress.0x6f626eb3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(blackListAddress)
    call blackListAddress.0x6f626eb3 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require not ext_call.return_data[0]
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
    if not arg3:
        require sub_b8e36035
        require insurerAddress
        require 0 / sub_b8e36035 <= balanceOf[address(arg2)]
        require 0 / sub_b8e36035 <= balanceOf[address(arg2)]
        balanceOf[address(arg2)] -= 0 / sub_b8e36035
        require balanceOf[stor10] + (0 / sub_b8e36035) >= balanceOf[stor10]
        balanceOf[stor10] += 0 / sub_b8e36035
        emit Transfer((0 / sub_b8e36035), arg2, insurerAddress);
    else:
        require arg3
        require arg3 * sub_388a7d0e / arg3 == sub_388a7d0e
        require sub_b8e36035
        require insurerAddress
        require arg3 * sub_388a7d0e / sub_b8e36035 <= balanceOf[address(arg2)]
        require arg3 * sub_388a7d0e / sub_b8e36035 <= balanceOf[address(arg2)]
        balanceOf[address(arg2)] -= arg3 * sub_388a7d0e / sub_b8e36035
        require balanceOf[stor10] + (arg3 * sub_388a7d0e / sub_b8e36035) >= balanceOf[stor10]
        balanceOf[stor10] += arg3 * sub_388a7d0e / sub_b8e36035
        emit Transfer((arg3 * sub_388a7d0e / sub_b8e36035), arg2, insurerAddress);
    return 1
}



}

contract main {


// =======================  Init code  ======================


address stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor9;

function _fallback() {
    stor1 = code.data[5258 len 20]
    stor9 = code.data[5310 len 32]
    address(stor2.field_0) = code.data[5290 len 20]
    Mask(96, 0, stor2.field_160) = Mask(96, 0, bool(code.data[5342 len 32]))
    emit Deployed(code.data[5290 len 20], code.data[5258 len 20]);
    return code.data[232 len 5014]
}



// =====================  Runtime code  =====================


#
#  - sub_c6a658d7(?)
#  - sub_d7822eaa(?)
#
const name = 'Banyan Infrastructure Service'

const getBalance = eth.balance(this.address)

const decimals = 18

const symbol = 'BNS'


address stor0;
address stor1;
uint8 stor2; offset 160
uint256 stor3;
mapping of struct funderBalance;
uint256 sub_cef5a851;
mapping of uint256 allowance;
uint256 totalSupply;

function getAllowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    emit Test(Array(len=11, data='funders get'), funderBalance[address(arg1)].field_256);
    return funderBalance[address(arg1)].field_256
}

function getFunderBalance(address arg1) {
    emit Test(Array(len=11, data='funders get'), funderBalance[address(arg1)].field_256);
    return funderBalance[address(arg1)].field_256
}

function sub_cef5a851(?) {
    return sub_cef5a851
}

function _fallback() payable {
    revert
}

function setCurrentTime(uint256 arg1) {
    require stor2
    stor3 = arg1
}

function getCurrentTime() {
    if not stor2:
        return block.timestamp
    if not stor3:
        return block.timestamp
    return stor3
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require funderBalance[address(msg.sender)].field_256 >= arg2
    funderBalance[address(msg.sender)].field_256 -= arg2
    if stor0 == funderBalance[address(arg1)].field_0:
        funderBalance[address(arg1)].field_0 = arg1
    require funderBalance[address(arg1)].field_256 <= -arg2 - 1
    funderBalance[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function pay() payable {
    funderBalance[address(msg.sender)].field_0 = msg.sender
    require funderBalance[address(msg.sender)].field_256 <= -msg.value - 1
    funderBalance[address(msg.sender)].field_256 += msg.value
    if not stor2:
        emit 0x43c6719c: address(this.address), block.timestamp, msg.value, msg.sender
    else:
        if not stor3:
            emit 0x43c6719c: address(this.address), block.timestamp, msg.value, msg.sender
        else:
            emit 0x43c6719c: address(this.address), stor3, msg.value, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    emit Test(Array(len=11, data='funders get'), funderBalance[address(msg.sender)].field_256);
    if funderBalance[address(msg.sender)].field_256 < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if funderBalance[address(arg2)].field_256 + arg3 <= funderBalance[address(arg2)].field_256:
        return 0
    require funderBalance[address(arg1)].field_256 >= arg3
    funderBalance[address(arg1)].field_256 -= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require funderBalance[address(arg2)].field_256 <= -arg3 - 1
    funderBalance[address(arg2)].field_256 += arg3
    return 1
}

function sub_ffdaf8e3(?) {
    require ext_code.size(stor1)
    call stor1.0x45b77737 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x49fe38ba with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.getInterestRate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x31e171d9 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 10^18 * ext_call.return_data[0] <= -1 / 12 * 10^18
    if not ext_call.return_data[0]:
        require ext_call.return_data[0]
        require ext_call.return_data[0] <= -1 / ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        require 10^18 * ext_call.return_data[0] <= -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        require 0 <= -(10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - 1
        require ext_call.return_data[0] <= -(10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - 1
        totalSupply = (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
    else:
        require 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 <= -1 / ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 <= -1
            require ext_call.return_data[0] <= -(ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18) - 1
            totalSupply = (ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18) + ext_call.return_data[0]
        else:
            require ext_call.return_data[0] <= -1 / ext_call.return_data[0]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                require ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 <= -1
                require ext_call.return_data[0] <= -(ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18) - 1
                totalSupply = (ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18) + ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] <= -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                require ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 <= -(10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - 1
                require ext_call.return_data[0] <= -(10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) + -(ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18) - 1
                totalSupply = (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 12000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18) + ext_call.return_data[0]
}



}

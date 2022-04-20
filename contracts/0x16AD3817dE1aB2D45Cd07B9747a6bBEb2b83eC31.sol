contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor2 = 70000000 * 10^18
    stor3 = 30000000 * 10^18
    stor4 = 10000000 * 10^18
    stor5 = 0
    stor6 = 24 * 3600
    stor7 = 419520 * 24 * 3600
    Mask(168, 0, stor8) = 0
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[5621 len 20]
    address(stor8) = code.data[5621 len 20]
    create contract with 0 wei
                    code: code.data[3119 len 2490]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args address(stor8)
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor8), stor3
    require ext_call.success
    emit LogCreate(address(stor8), stor7, stor6);
    return code.data[682 len 2437]
}



// =====================  Runtime code  =====================


const sub_0480269a(?) = 4000 * 10^18

const sub_2b38f304(?) = 50

const decimals = 18

const sub_47bd0df6(?) = 5500 * 10^18

const sub_569c7b04(?) = 10^18

const sub_8f8e5952(?) = 15

const sub_a58de70c(?) = 5000 * 10^18

const sub_b1b1227f(?) = (125 * 10^16 * 3600)

const sub_c19c5c08(?) = 50

const sub_d7a7dbdd(?) = 30

const MILLION = 1000000 * 10^18

const MIN_FUND = 10^16

const CRAWDSALE_END_DAY = 57

const CRAWDSALE_START_DAY = 1


address owner;
address sub_80920718Address;
uint256 icoSupply;
uint256 sub_351fb153;
uint256 preSupply;
uint256 icoAmount;
uint256 dayCycle;
uint256 fundingStartTime;
uint8 stor8; offset 160
uint128 stor8; offset 160
address ethFundDepositAddress;
uint256 totalContributedETH;

function fundingStartTime() {
    return fundingStartTime
}

function dayCycle() {
    return dayCycle
}

function sub_351fb153(?) {
    return sub_351fb153
}

function totalContributedETH() {
    return totalContributedETH
}

function icoSupply() {
    return icoSupply
}

function sub_80920718(?) {
    return sub_80920718Address
}

function owner() {
    return owner
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function preSupply() {
    return preSupply
}

function icoAmount() {
    return icoAmount
}

function isPause() {
    return bool(uint8(stor8.field_160))
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function pause(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
    emit LogPause(block.timestamp, arg1);
}

function today() {
    require block.timestamp - fundingStartTime <= block.timestamp
    require dayCycle
    return ((block.timestamp - fundingStartTime / dayCycle) + 1)
}

function recycle() {
    require owner == msg.sender
    require icoSupply - icoAmount <= icoSupply
    require ext_code.size(sub_80920718Address)
    call sub_80920718Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args ethFundDepositAddress, icoSupply - icoAmount
    require ext_call.success
    icoAmount = icoSupply
}

function _fallback() payable {
    require not uint8(stor8.field_160)
    require msg.value >= 10^16
    require block.timestamp - fundingStartTime <= block.timestamp
    require dayCycle
    require (block.timestamp - fundingStartTime / dayCycle) + 1 >= 1
    require (block.timestamp - fundingStartTime / dayCycle) + 1 <= 57
    if (block.timestamp - fundingStartTime / dayCycle) + 1 <= 15:
        require 5500 * 10^18 * msg.value / 5500 * 10^18 == msg.value
        require (5500 * 10^18 * msg.value) + 5 * 10^17 >= 5500 * 10^18 * msg.value
        require icoAmount + ((5500 * 10^18 * msg.value) + 5 * 10^17 / 10^18) >= icoAmount
        icoAmount += (5500 * 10^18 * msg.value) + 5 * 10^17 / 10^18
        if (block.timestamp - fundingStartTime / dayCycle) + 1 > 50:
            require icoAmount + ((5500 * 10^18 * msg.value) + 5 * 10^17 / 10^18) <= icoSupply
        else:
            require icoAmount + ((5500 * 10^18 * msg.value) + 5 * 10^17 / 10^18) <= preSupply
        require ext_code.size(sub_80920718Address)
        call sub_80920718Address.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (5500 * 10^18 * msg.value) + 5 * 10^17 / 10^18
        require ext_call.success
        totalContributedETH += msg.value
        emit 0x7a229568: (block.timestamp - fundingStartTime / dayCycle) + 1, msg.sender, msg.value, (5500 * 10^18 * msg.value) + 5 * 10^17 / 10^18
    else:
        if (block.timestamp - fundingStartTime / dayCycle) + 1 <= 30:
            require 5000 * 10^18 * msg.value / 5000 * 10^18 == msg.value
            require (5000 * 10^18 * msg.value) + 5 * 10^17 >= 5000 * 10^18 * msg.value
            require icoAmount + ((5000 * 10^18 * msg.value) + 5 * 10^17 / 10^18) >= icoAmount
            icoAmount += (5000 * 10^18 * msg.value) + 5 * 10^17 / 10^18
            if (block.timestamp - fundingStartTime / dayCycle) + 1 > 50:
                require icoAmount + ((5000 * 10^18 * msg.value) + 5 * 10^17 / 10^18) <= icoSupply
            else:
                require icoAmount + ((5000 * 10^18 * msg.value) + 5 * 10^17 / 10^18) <= preSupply
            require ext_code.size(sub_80920718Address)
            call sub_80920718Address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (5000 * 10^18 * msg.value) + 5 * 10^17 / 10^18
            require ext_call.success
            totalContributedETH += msg.value
            emit 0x7a229568: (block.timestamp - fundingStartTime / dayCycle) + 1, msg.sender, msg.value, (5000 * 10^18 * msg.value) + 5 * 10^17 / 10^18
        else:
            if (block.timestamp - fundingStartTime / dayCycle) + 1 > 50:
                require 4000 * 10^18 * msg.value / 4000 * 10^18 == msg.value
                require (4000 * 10^18 * msg.value) + 5 * 10^17 >= 4000 * 10^18 * msg.value
                require icoAmount + ((4000 * 10^18 * msg.value) + 5 * 10^17 / 10^18) >= icoAmount
                icoAmount += (4000 * 10^18 * msg.value) + 5 * 10^17 / 10^18
                if (block.timestamp - fundingStartTime / dayCycle) + 1 > 50:
                    require icoAmount + ((4000 * 10^18 * msg.value) + 5 * 10^17 / 10^18) <= icoSupply
                else:
                    require icoAmount + ((4000 * 10^18 * msg.value) + 5 * 10^17 / 10^18) <= preSupply
                require ext_code.size(sub_80920718Address)
                call sub_80920718Address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (4000 * 10^18 * msg.value) + 5 * 10^17 / 10^18
                require ext_call.success
                totalContributedETH += msg.value
                emit 0x7a229568: (block.timestamp - fundingStartTime / dayCycle) + 1, msg.sender, msg.value, (4000 * 10^18 * msg.value) + 5 * 10^17 / 10^18
            else:
                require 125 * 10^16 * 3600 * msg.value / 125 * 10^16 * 3600 == msg.value
                require (125 * 10^16 * 3600 * msg.value) + 5 * 10^17 >= 125 * 10^16 * 3600 * msg.value
                require icoAmount + ((125 * 10^16 * 3600 * msg.value) + 5 * 10^17 / 10^18) >= icoAmount
                icoAmount += (125 * 10^16 * 3600 * msg.value) + 5 * 10^17 / 10^18
                if (block.timestamp - fundingStartTime / dayCycle) + 1 > 50:
                    require icoAmount + ((125 * 10^16 * 3600 * msg.value) + 5 * 10^17 / 10^18) <= icoSupply
                else:
                    require icoAmount + ((125 * 10^16 * 3600 * msg.value) + 5 * 10^17 / 10^18) <= preSupply
                require ext_code.size(sub_80920718Address)
                call sub_80920718Address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (125 * 10^16 * 3600 * msg.value) + 5 * 10^17 / 10^18
                require ext_call.success
                totalContributedETH += msg.value
                emit 0x7a229568: (block.timestamp - fundingStartTime / dayCycle) + 1, msg.sender, msg.value, (125 * 10^16 * 3600 * msg.value) + 5 * 10^17 / 10^18
    call ethFundDepositAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}

contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint8 stor8;

function _fallback() payable {
    stor5 = 125 * 10^13
    stor6 = 125 * 10^13
    stor8 = 0
    require msg.value <= 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = block.timestamp
    return code.data[78 len 3019]
}



// =====================  Runtime code  =====================


const CROWDFUNDING_PERIOD = (2 * 3600)

const TOKEN_TARGET = 500000800

const TOKEN_LOCKING_PERIOD = 3600

const CAP = 10^9


address singularDTVTokenAddress;
uint256 stor0;
address singularDTVFundAddress;
uint256 stor1;
address owner;
uint256 startDate;
uint256 fundBalance;
uint256 baseValue;
uint256 valuePerShare;
mapping of uint256 investments;
uint8 stage;

function startDate() payable {
    return startDate
}

function fundBalance() payable {
    return fundBalance
}

function singularDTVFund() payable {
    return address(singularDTVFundAddress)
}

function baseValue() payable {
    return baseValue
}

function singularDTVToken() payable {
    return address(singularDTVTokenAddress)
}

function owner() payable {
    return owner
}

function investments(address arg1) payable {
    return investments[arg1]
}

function stage() payable {
    return stage
}

function valuePerShare() payable {
    return valuePerShare
}

function _fallback() payable {
    revert 
}

function twoYearsPassed() payable {
    require msg.value <= 0
    return block.timestamp - startDate >= 3600
}

function campaignEndedSuccessfully() payable {
    require msg.value <= 0
    if stage != 3:
        return 0
    return 1
}

function changeBaseValue(uint256 arg1) payable {
    require msg.value <= 0
    require msg.sender == owner
    baseValue = arg1
    return 1
}

function setup(address arg1, address arg2) payable {
    require msg.sender == owner
    require msg.value <= 0
    if address(singularDTVFundAddress) != 0:
        return 0
    if address(singularDTVTokenAddress):
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    uint256(stor0) = arg2 or Mask(96, 160, uint256(stor0))
    return 1
}

function emergencyCall() payable {
    require msg.value <= 0
    if fundBalance <= eth.balance(this.address):
        return 0
    if eth.balance(this.address) <= 0:
        return 1
    call address(singularDTVFundAddress).0x720c4798 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
    return 1
}

function updateStage() payable {
    if block.timestamp - startDate >= 528 * 24 * 3600:
        valuePerShare = 1500 * baseValue / 1000
    else:
        if block.timestamp - startDate >= 432 * 24 * 3600:
            valuePerShare = 1375 * baseValue / 1000
        else:
            if block.timestamp - startDate >= 336 * 24 * 3600:
                valuePerShare = 1250 * baseValue / 1000
            else:
                if block.timestamp - startDate < 240 * 24 * 3600:
                    valuePerShare = baseValue
                else:
                    valuePerShare = 1125 * baseValue / 1000
    if block.timestamp - startDate >= 2 * 3600:
        if 0 == stage:
            stage = 1
        else:
            if stage == 2:
                stage = 3
    require msg.value <= 0
    return stage
}

function withdrawFunding() payable {
    require msg.value <= 0
    if block.timestamp - startDate >= 528 * 24 * 3600:
        valuePerShare = 1500 * baseValue / 1000
    else:
        if block.timestamp - startDate >= 432 * 24 * 3600:
            valuePerShare = 1375 * baseValue / 1000
        else:
            if block.timestamp - startDate >= 336 * 24 * 3600:
                valuePerShare = 1250 * baseValue / 1000
            else:
                if block.timestamp - startDate < 240 * 24 * 3600:
                    valuePerShare = baseValue
                else:
                    valuePerShare = 1125 * baseValue / 1000
    if block.timestamp - startDate >= 2 * 3600:
        if 0 == stage:
            stage = 1
        else:
            if 2 == stage:
                stage = 3
    require 1 == stage
    investments[address(msg.sender)] = 0
    fundBalance -= investments[address(msg.sender)]
    if investments[address(msg.sender)] <= 0:
        if fundBalance <= eth.balance(this.address):
            return 1
    else:
        call msg.sender with:
           value investments[address(msg.sender)] wei
             gas 0 wei
        if ext_call.success:
            if fundBalance <= eth.balance(this.address):
                return 1
    revert 
}

function withdrawForWorkshop() payable {
    require msg.value <= 0
    if block.timestamp - startDate >= 528 * 24 * 3600:
        valuePerShare = 1500 * baseValue / 1000
    else:
        if block.timestamp - startDate >= 432 * 24 * 3600:
            valuePerShare = 1375 * baseValue / 1000
        else:
            if block.timestamp - startDate >= 336 * 24 * 3600:
                valuePerShare = 1250 * baseValue / 1000
            else:
                if block.timestamp - startDate < 240 * 24 * 3600:
                    valuePerShare = baseValue
                else:
                    valuePerShare = 1125 * baseValue / 1000
    if block.timestamp - startDate >= 2 * 3600:
        if 0 == stage:
            stage = 1
        else:
            if stage == 2:
                stage = 3
    require 3 == stage
    fundBalance = 0
    if fundBalance <= 0:
        if fundBalance <= eth.balance(this.address):
            return 1
    else:
        call address(singularDTVFundAddress).0x720c4798 with:
             gas gas_remaining - 25050 wei
        if ext_call.success:
            call ext_call.return_data[12 len 20] with:
               value fundBalance wei
                 gas 0 wei
            if ext_call.success:
                if fundBalance <= eth.balance(this.address):
                    return 1
    revert 
}

function fund() payable {
    if block.timestamp - startDate >= 528 * 24 * 3600:
        valuePerShare = 1500 * baseValue / 1000
    else:
        if block.timestamp - startDate >= 432 * 24 * 3600:
            valuePerShare = 1375 * baseValue / 1000
        else:
            if block.timestamp - startDate >= 336 * 24 * 3600:
                valuePerShare = 1250 * baseValue / 1000
            else:
                if block.timestamp - startDate < 240 * 24 * 3600:
                    valuePerShare = baseValue
                else:
                    valuePerShare = 1125 * baseValue / 1000
    if block.timestamp - startDate < 2 * 3600:
        if 0 == stage:
            if msg.value >= valuePerShare:
                call address(singularDTVTokenAddress).0x18160ddd with:
                     gas gas_remaining - 25050 wei
                if ext_call.success:
                    if ext_call.return_data[0] + (msg.value / valuePerShare) <= 10^9:
                        if msg.value <= msg.value / valuePerShare * valuePerShare:
                            fundBalance += msg.value / valuePerShare * valuePerShare
                            investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                            call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args msg.sender, msg.value / valuePerShare
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if stage != 0:
                                        if stage != 2:
                                            if fundBalance <= eth.balance(this.address):
                                                return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if 10^9 == ext_call.return_data[0]:
                                                    stage = 3
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                    else:
                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                             gas gas_remaining - 25050 wei
                                        if ext_call.success:
                                            if ext_call.return_data[0] >= 500000800:
                                                stage = 2
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / valuePerShare * valuePerShare) wei
                                 gas 0 wei
                            if ext_call.success:
                                fundBalance += msg.value / valuePerShare * valuePerShare
                                investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args msg.sender, msg.value / valuePerShare
                                if ext_call.return_data[0]:
                                    if stage != 0:
                                        if stage != 2:
                                            if fundBalance <= eth.balance(this.address):
                                                return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if 10^9 == ext_call.return_data[0]:
                                                    stage = 3
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                    else:
                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                             gas gas_remaining - 25050 wei
                                        if ext_call.success:
                                            if ext_call.return_data[0] >= 500000800:
                                                stage = 2
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                    else:
                        call address(singularDTVTokenAddress).0x18160ddd with:
                             gas gas_remaining - 25050 wei
                        if ext_call.success:
                            if msg.value <= (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare):
                                fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args msg.sender, -ext_call.return_data[0] + 10^9
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                            else:
                                call msg.sender with:
                                   value msg.value - (10^9 * valuePerShare) + (ext_call.return_data[0] * valuePerShare) wei
                                     gas 0 wei
                                if ext_call.success:
                                    fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                    investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, -ext_call.return_data[0] + 10^9
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
        else:
            if 2 == stage:
                if msg.value >= valuePerShare:
                    call address(singularDTVTokenAddress).0x18160ddd with:
                         gas gas_remaining - 25050 wei
                    if ext_call.success:
                        if ext_call.return_data[0] + (msg.value / valuePerShare) <= 10^9:
                            if msg.value <= msg.value / valuePerShare * valuePerShare:
                                fundBalance += msg.value / valuePerShare * valuePerShare
                                investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args msg.sender, msg.value / valuePerShare
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                            else:
                                call msg.sender with:
                                   value msg.value - (msg.value / valuePerShare * valuePerShare) wei
                                     gas 0 wei
                                if ext_call.success:
                                    fundBalance += msg.value / valuePerShare * valuePerShare
                                    investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, msg.value / valuePerShare
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                        else:
                            call address(singularDTVTokenAddress).0x18160ddd with:
                                 gas gas_remaining - 25050 wei
                            if ext_call.success:
                                if msg.value <= (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare):
                                    fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                    investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, -ext_call.return_data[0] + 10^9
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if stage != 0:
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[0] >= 500000800:
                                                        stage = 2
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
                                else:
                                    call msg.sender with:
                                       value msg.value - (10^9 * valuePerShare) + (ext_call.return_data[0] * valuePerShare) wei
                                         gas 0 wei
                                    if ext_call.success:
                                        fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                        investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                        call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 25050 wei
                                            args msg.sender, -ext_call.return_data[0] + 10^9
                                        if ext_call.return_data[0]:
                                            if stage != 0:
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[0] >= 500000800:
                                                        stage = 2
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
    else:
        if 0 == stage:
            stage = 1
            if msg.value >= valuePerShare:
                call address(singularDTVTokenAddress).0x18160ddd with:
                     gas gas_remaining - 25050 wei
                if ext_call.success:
                    if ext_call.return_data[0] + (msg.value / valuePerShare) <= 10^9:
                        if msg.value <= msg.value / valuePerShare * valuePerShare:
                            fundBalance += msg.value / valuePerShare * valuePerShare
                            investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                            call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args msg.sender, msg.value / valuePerShare
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if stage != 0:
                                        if stage != 2:
                                            if fundBalance <= eth.balance(this.address):
                                                return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if 10^9 == ext_call.return_data[0]:
                                                    stage = 3
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                    else:
                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                             gas gas_remaining - 25050 wei
                                        if ext_call.success:
                                            if ext_call.return_data[0] >= 500000800:
                                                stage = 2
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / valuePerShare * valuePerShare) wei
                                 gas 0 wei
                            if ext_call.success:
                                fundBalance += msg.value / valuePerShare * valuePerShare
                                investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args msg.sender, msg.value / valuePerShare
                                if ext_call.return_data[0]:
                                    if stage != 0:
                                        if stage != 2:
                                            if fundBalance <= eth.balance(this.address):
                                                return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if 10^9 == ext_call.return_data[0]:
                                                    stage = 3
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                    else:
                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                             gas gas_remaining - 25050 wei
                                        if ext_call.success:
                                            if ext_call.return_data[0] >= 500000800:
                                                stage = 2
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                    else:
                        call address(singularDTVTokenAddress).0x18160ddd with:
                             gas gas_remaining - 25050 wei
                        if ext_call.success:
                            if msg.value <= (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare):
                                fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args msg.sender, -ext_call.return_data[0] + 10^9
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                            else:
                                call msg.sender with:
                                   value msg.value - (10^9 * valuePerShare) + (ext_call.return_data[0] * valuePerShare) wei
                                     gas 0 wei
                                if ext_call.success:
                                    fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                    investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, -ext_call.return_data[0] + 10^9
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
        else:
            if 2 == stage:
                stage = 3
            if 0 == stage:
                if msg.value >= valuePerShare:
                    call address(singularDTVTokenAddress).0x18160ddd with:
                         gas gas_remaining - 25050 wei
                    if ext_call.success:
                        if ext_call.return_data[0] + (msg.value / valuePerShare) <= 10^9:
                            if msg.value <= msg.value / valuePerShare * valuePerShare:
                                fundBalance += msg.value / valuePerShare * valuePerShare
                                investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args msg.sender, msg.value / valuePerShare
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                            else:
                                call msg.sender with:
                                   value msg.value - (msg.value / valuePerShare * valuePerShare) wei
                                     gas 0 wei
                                if ext_call.success:
                                    fundBalance += msg.value / valuePerShare * valuePerShare
                                    investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, msg.value / valuePerShare
                                    if ext_call.return_data[0]:
                                        if stage != 0:
                                            if stage != 2:
                                                if fundBalance <= eth.balance(this.address):
                                                    return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if 10^9 == ext_call.return_data[0]:
                                                        stage = 3
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                        else:
                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                 gas gas_remaining - 25050 wei
                                            if ext_call.success:
                                                if ext_call.return_data[0] >= 500000800:
                                                    stage = 2
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                        else:
                            call address(singularDTVTokenAddress).0x18160ddd with:
                                 gas gas_remaining - 25050 wei
                            if ext_call.success:
                                if msg.value <= (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare):
                                    fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                    investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, -ext_call.return_data[0] + 10^9
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if stage != 0:
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[0] >= 500000800:
                                                        stage = 2
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
                                else:
                                    call msg.sender with:
                                       value msg.value - (10^9 * valuePerShare) + (ext_call.return_data[0] * valuePerShare) wei
                                         gas 0 wei
                                    if ext_call.success:
                                        fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                        investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                        call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 25050 wei
                                            args msg.sender, -ext_call.return_data[0] + 10^9
                                        if ext_call.return_data[0]:
                                            if stage != 0:
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[0] >= 500000800:
                                                        stage = 2
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
            else:
                if 2 == stage:
                    if msg.value >= valuePerShare:
                        call address(singularDTVTokenAddress).0x18160ddd with:
                             gas gas_remaining - 25050 wei
                        if ext_call.success:
                            if ext_call.return_data[0] + (msg.value / valuePerShare) <= 10^9:
                                if msg.value <= msg.value / valuePerShare * valuePerShare:
                                    fundBalance += msg.value / valuePerShare * valuePerShare
                                    investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                    call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 25050 wei
                                        args msg.sender, msg.value / valuePerShare
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if stage != 0:
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[0] >= 500000800:
                                                        stage = 2
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (msg.value / valuePerShare)
                                else:
                                    call msg.sender with:
                                       value msg.value - (msg.value / valuePerShare * valuePerShare) wei
                                         gas 0 wei
                                    if ext_call.success:
                                        fundBalance += msg.value / valuePerShare * valuePerShare
                                        investments[address(msg.sender)] += msg.value / valuePerShare * valuePerShare
                                        call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 25050 wei
                                            args msg.sender, msg.value / valuePerShare
                                        if ext_call.return_data[0]:
                                            if stage != 0:
                                                if stage != 2:
                                                    if fundBalance <= eth.balance(this.address):
                                                        return (msg.value / valuePerShare)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if 10^9 == ext_call.return_data[0]:
                                                            stage = 3
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                                            else:
                                                call address(singularDTVTokenAddress).0x18160ddd with:
                                                     gas gas_remaining - 25050 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[0] >= 500000800:
                                                        stage = 2
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (msg.value / valuePerShare)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (msg.value / valuePerShare)
                            else:
                                call address(singularDTVTokenAddress).0x18160ddd with:
                                     gas gas_remaining - 25050 wei
                                if ext_call.success:
                                    if msg.value <= (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare):
                                        fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                        investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                        call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 25050 wei
                                            args msg.sender, -ext_call.return_data[0] + 10^9
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if stage != 0:
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if ext_call.return_data[0] >= 500000800:
                                                            stage = 2
                                                        if stage != 2:
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
                                                        else:
                                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                                 gas gas_remaining - 25050 wei
                                                            if ext_call.success:
                                                                if 10^9 == ext_call.return_data[0]:
                                                                    stage = 3
                                                                if fundBalance <= eth.balance(this.address):
                                                                    return (-ext_call.return_data[0] + 10^9)
                                    else:
                                        call msg.sender with:
                                           value msg.value - (10^9 * valuePerShare) + (ext_call.return_data[0] * valuePerShare) wei
                                             gas 0 wei
                                        if ext_call.success:
                                            fundBalance = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + fundBalance
                                            investments[address(msg.sender)] = (10^9 * valuePerShare) - (ext_call.return_data[0] * valuePerShare) + investments[address(msg.sender)]
                                            call address(singularDTVTokenAddress).issueTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 25050 wei
                                                args msg.sender, -ext_call.return_data[0] + 10^9
                                            if ext_call.return_data[0]:
                                                if stage != 0:
                                                    if stage != 2:
                                                        if fundBalance <= eth.balance(this.address):
                                                            return (-ext_call.return_data[0] + 10^9)
                                                    else:
                                                        call address(singularDTVTokenAddress).0x18160ddd with:
                                                             gas gas_remaining - 25050 wei
                                                        if ext_call.success:
                                                            if 10^9 == ext_call.return_data[0]:
                                                                stage = 3
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
                                                else:
                                                    call address(singularDTVTokenAddress).0x18160ddd with:
                                                         gas gas_remaining - 25050 wei
                                                    if ext_call.success:
                                                        if ext_call.return_data[0] >= 500000800:
                                                            stage = 2
                                                        if stage != 2:
                                                            if fundBalance <= eth.balance(this.address):
                                                                return (-ext_call.return_data[0] + 10^9)
                                                        else:
                                                            call address(singularDTVTokenAddress).0x18160ddd with:
                                                                 gas gas_remaining - 25050 wei
                                                            if ext_call.success:
                                                                if 10^9 == ext_call.return_data[0]:
                                                                    stage = 3
                                                                if fundBalance <= eth.balance(this.address):
                                                                    return (-ext_call.return_data[0] + 10^9)
    revert 
}



}

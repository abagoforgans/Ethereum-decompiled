contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
bool stor8; offset 256
uint8 stor8; offset 160
uint8 stor8; offset 168
uint128 stor8; offset 176
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor3 = 0
    uint8(stor8.field_160) = 4
    uint8(stor8.field_168) = 0
    Mask(80, 0, stor8.field_176) = 0
    stor8.field_256 % 1 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 17794608 * 24 * 3600
    stor12 = 8 * 3600
    stor13 = 18 * 3600
    stor14 = 20 * 3600
    stor15 = 22 * 3600
    stor16 = 23 * 3600
    stor17 = 24 * 3600
    stor18 = 17794608 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor7 = code.data[6168 len 20]
    stor5 = code.data[6200 len 20]
    stor6 = code.data[6232 len 20]
    stor4 = code.data[6264 len 20]
    address(stor8.field_0) = code.data[6296 len 20]
    stor1 = code.data[6168 len 20]
    return code.data[356 len 5800]
}



// =====================  Runtime code  =====================


const baseRate = 300

const stage_3_add = 1

const decimals = 18

const stage_2_add = 3

const bonusAdd = 9

const stage_1_add = 4

const bonusTokenThreshold = 600 * 10^18

const minContribution = 5 * 10^16

const bonusMinContribution = 5 * 10^18

const scale = 10^18

const PRCT_ETH_OP = 10

const PRCT_TEAM = 10

const PRCT_BOUNTY = 3


address controllerAddress;
address tokenAddress;
address stor2;
address teamVaultAddr;
address bountyVaultAddr;
address trusteeVaultAddr;
address opVaultAddr;
address tokenAddr;
uint8 campaignState; offset 160
uint8 stor8; offset 168
address robotAddr;
uint256 tokensGenerated;
uint256 amountRaised;
uint256 tCampaignStart;
uint256 tBonusStageEnd;
uint256 tRegSaleStart;
uint256 t_1st_StageEnd;
uint256 t_2nd_StageEnd;
uint256 t_3rd_StageEnd;
uint256 tCampaignEnd;
uint256 tFinalized;

function tCampaignEnd() {
    return tCampaignEnd
}

function tBonusStageEnd() {
    return tBonusStageEnd
}

function robotAddr() {
    return robotAddr
}

function opVaultAddr() {
    return opVaultAddr
}

function paused() {
    return bool(stor8)
}

function tokenAddr() {
    return tokenAddr
}

function amountRaised() {
    return amountRaised
}

function bountyVaultAddr() {
    return bountyVaultAddr
}

function teamVaultAddr() {
    return teamVaultAddr
}

function tokensGenerated() {
    return tokensGenerated
}

function tCampaignStart() {
    return tCampaignStart
}

function tRegSaleStart() {
    return tRegSaleStart
}

function trusteeVaultAddr() {
    return trusteeVaultAddr
}

function t_1st_StageEnd() {
    return t_1st_StageEnd
}

function t_2nd_StageEnd() {
    return t_2nd_StageEnd
}

function t_3rd_StageEnd() {
    return t_3rd_StageEnd
}

function tFinalized() {
    return tFinalized
}

function campaignState() {
    return campaignState
}

function controller() {
    return controllerAddress
}

function token() {
    return tokenAddress
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function setRobotAddr(address arg1) {
    require controllerAddress == msg.sender
    require arg1
    robotAddr = arg1
}

function pauseSale() {
    require controllerAddress == msg.sender
    require 2 == campaignState
    stor8 = 1
    emit CampaignPausd(block.timestamp);
}

function resumeSale() {
    require controllerAddress == msg.sender
    require 2 == campaignState
    stor8 = 0
    emit CampaignResumed(block.timestamp);
}

function get_presale_goal() {
    if block.timestamp > tBonusStageEnd:
        return 0
    if tokensGenerated < 600 * 10^18:
        return 0
    return 1
}

function closeSale() {
    require controllerAddress == msg.sender
    require 2 == campaignState
    campaignState = 1
    emit CampaignClosed(block.timestamp);
}

function setTeamAddr(address arg1) {
    require controllerAddress == msg.sender
    require campaignState > 2
    require arg1
    teamVaultAddr = arg1
    stor2 = arg1
}

function get_rate() {
    if block.timestamp < tCampaignStart:
        return 0
    if block.timestamp > tCampaignEnd:
        return 0
    if block.timestamp <= tBonusStageEnd:
        return 309 * 10^18
    if block.timestamp <= t_1st_StageEnd:
        return 304 * 10^18
    if block.timestamp <= t_2nd_StageEnd:
        return 303 * 10^18
    if block.timestamp > t_3rd_StageEnd:
        return 300 * 10^18
    return 301 * 10^18
}

function startSale() {
    require controllerAddress == msg.sender
    require campaignState > 2
    require teamVaultAddr
    campaignState = 2
    tCampaignStart = block.timestamp
    tBonusStageEnd += block.timestamp
    tRegSaleStart += block.timestamp
    t_1st_StageEnd += block.timestamp
    t_2nd_StageEnd += block.timestamp
    t_3rd_StageEnd += block.timestamp
    tCampaignEnd += block.timestamp
    emit CampaignOpen(block.timestamp);
}

function claimTokens(address arg1) {
    require controllerAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args controllerAddress, ext_call.return_data[0]
    require ext_call.success
    emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}

function grant_token_from_offchain(address arg1, uint256 arg2, string arg3) {
    require robotAddr == msg.sender
    if campaignState != 2:
        require 1 == campaignState
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa16fa142 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokensGenerated >= tokensGenerated
    tokensGenerated += arg2
    emit TokenGranted(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
}

function finalizeCampaign() {
    if campaignState != 1:
        require campaignState
        require block.timestamp > tCampaignEnd + 1200
    campaignState = 0
    call trusteeVaultAddr with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if tokensGenerated:
        require tokensGenerated
        require 3 * tokensGenerated / tokensGenerated == 3
    if tokensGenerated:
        require tokensGenerated
        require 10 * tokensGenerated / tokensGenerated == 10
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa16fa142 with:
         gas gas_remaining - 710 wei
        args bountyVaultAddr, 3 * tokensGenerated / 100
    require ext_call.success
    require ext_call.return_data[0]
    require (3 * tokensGenerated / 100) + tokensGenerated >= tokensGenerated
    tokensGenerated += 3 * tokensGenerated / 100
    tFinalized = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa16fa142 with:
         gas gas_remaining - 710 wei
        args teamVaultAddr, 10 * tokensGenerated / 100
    require ext_call.success
    require ext_call.return_data[0]
    require (10 * tokensGenerated / 100) + tokensGenerated >= tokensGenerated
    tokensGenerated += 10 * tokensGenerated / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized(tFinalized);
}

function _fallback() payable {
    require msg.sender == tx.origin
    require 2 == campaignState
    require block.timestamp <= tCampaignEnd
    require not stor8
    if block.timestamp <= tBonusStageEnd:
        require msg.value >= 5 * 10^18
        require tokensGenerated < 600 * 10^18
    else:
        require block.timestamp >= tRegSaleStart
        if block.timestamp <= tBonusStageEnd:
            require msg.value >= 5 * 10^18
            require tokensGenerated < 600 * 10^18
    require msg.value >= 5 * 10^16
    if block.timestamp < tCampaignStart:
        require 10 * msg.value / 10 == msg.value
        call opVaultAddr with:
           value 10 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa16fa142 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
        require tokensGenerated >= tokensGenerated
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        emit TokenGranted(0, msg.sender);
    else:
        if block.timestamp > tCampaignEnd:
            require 10 * msg.value / 10 == msg.value
            call opVaultAddr with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa16fa142 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            require tokensGenerated >= tokensGenerated
            require msg.value + amountRaised >= amountRaised
            amountRaised += msg.value
            emit TokenGranted(0, msg.sender);
        else:
            if block.timestamp <= tBonusStageEnd:
                require 309 * 10^18 * msg.value / 309 * 10^18 == msg.value
                require 10 * msg.value / 10 == msg.value
                call opVaultAddr with:
                   value 10 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa16fa142 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 309 * 10^18 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                require (309 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                tokensGenerated += 309 * 10^18 * msg.value / 10^18
                require msg.value + amountRaised >= amountRaised
                amountRaised += msg.value
                emit TokenGranted((309 * 10^18 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp <= t_1st_StageEnd:
                    require 304 * 10^18 * msg.value / 304 * 10^18 == msg.value
                    require 10 * msg.value / 10 == msg.value
                    call opVaultAddr with:
                       value 10 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa16fa142 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 304 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    require (304 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                    tokensGenerated += 304 * 10^18 * msg.value / 10^18
                    require msg.value + amountRaised >= amountRaised
                    amountRaised += msg.value
                    emit TokenGranted((304 * 10^18 * msg.value / 10^18), msg.sender);
                else:
                    if block.timestamp <= t_2nd_StageEnd:
                        require 303 * 10^18 * msg.value / 303 * 10^18 == msg.value
                        require 10 * msg.value / 10 == msg.value
                        call opVaultAddr with:
                           value 10 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa16fa142 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 303 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        require (303 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                        tokensGenerated += 303 * 10^18 * msg.value / 10^18
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        emit TokenGranted((303 * 10^18 * msg.value / 10^18), msg.sender);
                    else:
                        if block.timestamp > t_3rd_StageEnd:
                            require 300 * 10^18 * msg.value / 300 * 10^18 == msg.value
                            require 10 * msg.value / 10 == msg.value
                            call opVaultAddr with:
                               value 10 * msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa16fa142 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 300 * 10^18 * msg.value / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            require (300 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                            tokensGenerated += 300 * 10^18 * msg.value / 10^18
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            emit TokenGranted((300 * 10^18 * msg.value / 10^18), msg.sender);
                        else:
                            require 301 * 10^18 * msg.value / 301 * 10^18 == msg.value
                            require 10 * msg.value / 10 == msg.value
                            call opVaultAddr with:
                               value 10 * msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa16fa142 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 301 * 10^18 * msg.value / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            require (301 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                            tokensGenerated += 301 * 10^18 * msg.value / 10^18
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            emit TokenGranted((301 * 10^18 * msg.value / 10^18), msg.sender);
    emit TotalRaised(amountRaised);
}

function proxy_contribution(address arg1) payable {
    require arg1
    require msg.sender == tx.origin
    require 2 == campaignState
    require block.timestamp <= tCampaignEnd
    require not stor8
    if block.timestamp <= tBonusStageEnd:
        require msg.value >= 5 * 10^18
        require tokensGenerated < 600 * 10^18
    else:
        require block.timestamp >= tRegSaleStart
        if block.timestamp <= tBonusStageEnd:
            require msg.value >= 5 * 10^18
            require tokensGenerated < 600 * 10^18
    require msg.value >= 5 * 10^16
    if block.timestamp < tCampaignStart:
        require 10 * msg.value / 10 == msg.value
        call opVaultAddr with:
           value 10 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa16fa142 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        require ext_call.return_data[0]
        require tokensGenerated >= tokensGenerated
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        emit TokenGranted(0, arg1);
    else:
        if block.timestamp > tCampaignEnd:
            require 10 * msg.value / 10 == msg.value
            call opVaultAddr with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa16fa142 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
            require tokensGenerated >= tokensGenerated
            require msg.value + amountRaised >= amountRaised
            amountRaised += msg.value
            emit TokenGranted(0, arg1);
        else:
            if block.timestamp <= tBonusStageEnd:
                require 309 * 10^18 * msg.value / 309 * 10^18 == msg.value
                require 10 * msg.value / 10 == msg.value
                call opVaultAddr with:
                   value 10 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa16fa142 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 309 * 10^18 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                require (309 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                tokensGenerated += 309 * 10^18 * msg.value / 10^18
                require msg.value + amountRaised >= amountRaised
                amountRaised += msg.value
                emit TokenGranted((309 * 10^18 * msg.value / 10^18), arg1);
            else:
                if block.timestamp <= t_1st_StageEnd:
                    require 304 * 10^18 * msg.value / 304 * 10^18 == msg.value
                    require 10 * msg.value / 10 == msg.value
                    call opVaultAddr with:
                       value 10 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa16fa142 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 304 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    require (304 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                    tokensGenerated += 304 * 10^18 * msg.value / 10^18
                    require msg.value + amountRaised >= amountRaised
                    amountRaised += msg.value
                    emit TokenGranted((304 * 10^18 * msg.value / 10^18), arg1);
                else:
                    if block.timestamp <= t_2nd_StageEnd:
                        require 303 * 10^18 * msg.value / 303 * 10^18 == msg.value
                        require 10 * msg.value / 10 == msg.value
                        call opVaultAddr with:
                           value 10 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa16fa142 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 303 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        require (303 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                        tokensGenerated += 303 * 10^18 * msg.value / 10^18
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        emit TokenGranted((303 * 10^18 * msg.value / 10^18), arg1);
                    else:
                        if block.timestamp > t_3rd_StageEnd:
                            require 300 * 10^18 * msg.value / 300 * 10^18 == msg.value
                            require 10 * msg.value / 10 == msg.value
                            call opVaultAddr with:
                               value 10 * msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa16fa142 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 300 * 10^18 * msg.value / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            require (300 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                            tokensGenerated += 300 * 10^18 * msg.value / 10^18
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            emit TokenGranted((300 * 10^18 * msg.value / 10^18), arg1);
                        else:
                            require 301 * 10^18 * msg.value / 301 * 10^18 == msg.value
                            require 10 * msg.value / 10 == msg.value
                            call opVaultAddr with:
                               value 10 * msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa16fa142 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 301 * 10^18 * msg.value / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            require (301 * 10^18 * msg.value / 10^18) + tokensGenerated >= tokensGenerated
                            tokensGenerated += 301 * 10^18 * msg.value / 10^18
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            emit TokenGranted((301 * 10^18 * msg.value / 10^18), arg1);
    emit TotalRaised(amountRaised);
}



}

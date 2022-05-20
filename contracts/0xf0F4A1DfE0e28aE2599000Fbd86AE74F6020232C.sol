contract main {




// =====================  Runtime code  =====================


const decimals = 18

const MARKET_CAP_PER_ROUND = 20000000 * 10^18

const MANAGE_CAP = 100000000 * 10^18

const FINANCE_CAP_PER_ROUND = 12000000 * 10^18

const MARKET_CAP = 100000000 * 10^18

const DEVELOP_CAP_PER_ROUND = 40000000 * 10^18

const MANAGE_CAP_PER_ROUND = 20000000 * 10^18

const DEVELOP_CAP = 200000000 * 10^18

const FINANCE_CAP = 60000000 * 10^18


address owner;
address tokenAddress;
mapping of uint256 releasedTokenOf;
address beneficiaryManageAddress;
address beneficiaryDevelopAddress;
address beneficiaryMarketAddress;
address beneficiaryFinanceAddress;
uint256 firstRoundReleaseTime;
uint256 secondRoundReleaseTime;
uint256 thirdRoundReleaseTime;
uint256 forthRoundReleaseTime;
uint256 fifthRoundReleaseTime;

function getBeneficiaryFinance() {
    return beneficiaryFinanceAddress
}

function getToken() {
    return tokenAddress
}

function getForthRoundReleaseTime() {
    return forthRoundReleaseTime
}

function getSecondRoundReleaseTime() {
    return secondRoundReleaseTime
}

function getThirdRoundReleaseTime() {
    return thirdRoundReleaseTime
}

function releasedTokenOf(address arg1) {
    return releasedTokenOf[address(arg1)]
}

function getFifthRoundReleaseTime() {
    return fifthRoundReleaseTime
}

function getBeneficiaryMarket() {
    return beneficiaryMarketAddress
}

function getBeneficiaryDevelop() {
    return beneficiaryDevelopAddress
}

function owner() {
    return owner
}

function getFirstRoundReleaseTime() {
    return firstRoundReleaseTime
}

function getBeneficiaryManage() {
    return beneficiaryManageAddress
}

function _fallback() payable {
    revert
}

function releaseToken() {
    require msg.sender == owner
    if block.timestamp >= fifthRoundReleaseTime:
        require msg.sender == owner
        require releasedTokenOf[stor3] < 100000000 * 10^18
        require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
        require releasedTokenOf[stor3] + 20000000 * 10^18 <= 100000000 * 10^18
        require releasedTokenOf[stor4] < 200000000 * 10^18
        require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
        require releasedTokenOf[stor4] + 40000000 * 10^18 <= 200000000 * 10^18
        require releasedTokenOf[stor5] < 100000000 * 10^18
        require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
        require releasedTokenOf[stor5] + 20000000 * 10^18 <= 100000000 * 10^18
        require releasedTokenOf[stor6] < 60000000 * 10^18
        require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
        require releasedTokenOf[stor6] + 12000000 * 10^18 <= 60000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 92000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryManageAddress, 20000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
        releasedTokenOf[stor3] += 20000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryDevelopAddress, 40000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
        releasedTokenOf[stor4] += 40000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryMarketAddress, 20000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
        releasedTokenOf[stor5] += 20000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryFinanceAddress, 12000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
        releasedTokenOf[stor6] += 12000000 * 10^18
    else:
        if block.timestamp >= forthRoundReleaseTime:
            require msg.sender == owner
            require releasedTokenOf[stor3] < 80000000 * 10^18
            require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
            require releasedTokenOf[stor3] + 20000000 * 10^18 <= 80000000 * 10^18
            require releasedTokenOf[stor4] < 160000000 * 10^18
            require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
            require releasedTokenOf[stor4] + 40000000 * 10^18 <= 160000000 * 10^18
            require releasedTokenOf[stor5] < 80000000 * 10^18
            require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
            require releasedTokenOf[stor5] + 20000000 * 10^18 <= 80000000 * 10^18
            require releasedTokenOf[stor6] < 48000000 * 10^18
            require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
            require releasedTokenOf[stor6] + 12000000 * 10^18 <= 48000000 * 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 92000000 * 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryManageAddress, 20000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
            releasedTokenOf[stor3] += 20000000 * 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryDevelopAddress, 40000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
            releasedTokenOf[stor4] += 40000000 * 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryMarketAddress, 20000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
            releasedTokenOf[stor5] += 20000000 * 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryFinanceAddress, 12000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
            releasedTokenOf[stor6] += 12000000 * 10^18
        else:
            if block.timestamp >= thirdRoundReleaseTime:
                require msg.sender == owner
                require releasedTokenOf[stor3] < 60000000 * 10^18
                require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
                require releasedTokenOf[stor3] + 20000000 * 10^18 <= 60000000 * 10^18
                require releasedTokenOf[stor4] < 120000000 * 10^18
                require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
                require releasedTokenOf[stor4] + 40000000 * 10^18 <= 120000000 * 10^18
                require releasedTokenOf[stor5] < 60000000 * 10^18
                require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
                require releasedTokenOf[stor5] + 20000000 * 10^18 <= 60000000 * 10^18
                require releasedTokenOf[stor6] < 10000 * 10^18 * 3600
                require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
                require releasedTokenOf[stor6] + 12000000 * 10^18 <= 10000 * 10^18 * 3600
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 92000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryManageAddress, 20000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
                releasedTokenOf[stor3] += 20000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryDevelopAddress, 40000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
                releasedTokenOf[stor4] += 40000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryMarketAddress, 20000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
                releasedTokenOf[stor5] += 20000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryFinanceAddress, 12000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
                releasedTokenOf[stor6] += 12000000 * 10^18
            else:
                if block.timestamp >= secondRoundReleaseTime:
                    require msg.sender == owner
                    require releasedTokenOf[stor3] < 40000000 * 10^18
                    require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
                    require releasedTokenOf[stor3] + 20000000 * 10^18 <= 40000000 * 10^18
                    require releasedTokenOf[stor4] < 80000000 * 10^18
                    require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
                    require releasedTokenOf[stor4] + 40000000 * 10^18 <= 80000000 * 10^18
                    require releasedTokenOf[stor5] < 40000000 * 10^18
                    require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
                    require releasedTokenOf[stor5] + 20000000 * 10^18 <= 40000000 * 10^18
                    require releasedTokenOf[stor6] < 24000000 * 10^18
                    require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
                    require releasedTokenOf[stor6] + 12000000 * 10^18 <= 24000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 92000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryManageAddress, 20000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
                    releasedTokenOf[stor3] += 20000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryDevelopAddress, 40000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
                    releasedTokenOf[stor4] += 40000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryMarketAddress, 20000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
                    releasedTokenOf[stor5] += 20000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryFinanceAddress, 12000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
                    releasedTokenOf[stor6] += 12000000 * 10^18
                else:
                    if block.timestamp >= firstRoundReleaseTime:
                        require msg.sender == owner
                        require releasedTokenOf[stor3] < 20000000 * 10^18
                        require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
                        require releasedTokenOf[stor3] + 20000000 * 10^18 <= 20000000 * 10^18
                        require releasedTokenOf[stor4] < 40000000 * 10^18
                        require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
                        require releasedTokenOf[stor4] + 40000000 * 10^18 <= 40000000 * 10^18
                        require releasedTokenOf[stor5] < 20000000 * 10^18
                        require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
                        require releasedTokenOf[stor5] + 20000000 * 10^18 <= 20000000 * 10^18
                        require releasedTokenOf[stor6] < 12000000 * 10^18
                        require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
                        require releasedTokenOf[stor6] + 12000000 * 10^18 <= 12000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 92000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryManageAddress, 20000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require releasedTokenOf[stor3] + 20000000 * 10^18 >= releasedTokenOf[stor3]
                        releasedTokenOf[stor3] += 20000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryDevelopAddress, 40000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require releasedTokenOf[stor4] + 40000000 * 10^18 >= releasedTokenOf[stor4]
                        releasedTokenOf[stor4] += 40000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryMarketAddress, 20000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require releasedTokenOf[stor5] + 20000000 * 10^18 >= releasedTokenOf[stor5]
                        releasedTokenOf[stor5] += 20000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryFinanceAddress, 12000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require releasedTokenOf[stor6] + 12000000 * 10^18 >= releasedTokenOf[stor6]
                        releasedTokenOf[stor6] += 12000000 * 10^18
}



}

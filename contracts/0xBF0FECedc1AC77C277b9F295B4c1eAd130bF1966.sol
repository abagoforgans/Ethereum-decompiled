contract main {


// =======================  Init code  ======================


address stor0;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor7 = 925 * 10^14 * 3600
    stor8 = 700 * 10^18
    stor9 = 1050 * 10^18
    stor10 = 1400 * 10^18
    stor11 = 24 * 3600
    require not msg.value
    stor0 = msg.sender
    require code.data[14541 len 20]
    create contract with 0 wei
                    code: code.data[5400 len 6573]
    require create.new_address
    stor6 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[11973 len 2556], code.data[14541 len 20]
    stor5 = address(create.new_address)
    return code.data[607 len 4793]
}



// =====================  Runtime code  =====================


const startDate = (420756 * 3600)

const etherCost = 750

const tokenPrice = 2 * 10^15

const softCap = (925 * 10^14 * 3600)

const endDate = (421116 * 3600)

const hardCap = 1400 * 10^18


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address refundVaultAddress;
address keeppetTokenAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function refundVault() {
    return refundVaultAddress
}

function keeppetToken() {
    return keeppetTokenAddress
}

function owner() {
    return owner
}

function stat() {
    return stor1, stor2, stor3, stor4
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function unPauseToken() {
    require msg.sender == owner
    require ext_code.size(keeppetTokenAddress)
    call keeppetTokenAddress.unPause() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function checkBonus(uint256 arg1) {
    require arg1 >= 0
    if stor3 + stor2 < stor7:
        if stor7 <= stor3 + stor2 + arg1:
            return stor7 <= stor3 + stor2 + arg1
    if stor3 + stor2 < stor8:
        if stor8 <= stor3 + stor2 + arg1:
            return stor8 <= stor3 + stor2 + arg1
    if stor3 + stor2 < stor9:
        if stor9 <= stor3 + stor2 + arg1:
            return stor9 <= stor3 + stor2 + arg1
    if stor3 + stor2 >= stor10:
        return (stor3 + stor2 < stor10)
    return stor10 <= stor3 + stor2 + arg1
}

function sendTokensManually(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 < 6
    require arg1
    require block.timestamp <= 421188 * 3600
    if arg2 / 2 * 10^15:
        require arg2 / 2 * 10^15
        require arg2 / 2 * 10^15 * arg3 / arg2 / 2 * 10^15 == arg3
    require ext_code.size(keeppetTokenAddress)
    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 / 2 * 10^15 * arg3
    require ext_call.success
    stor1 += arg2 / 2 * 10^15 * arg3
    stor2 += arg2
    stor4++
}

function checkFunds() {
    require block.timestamp >= 421116 * 3600
    require msg.sender == owner
    require ext_code.size(keeppetTokenAddress)
    call keeppetTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(keeppetTokenAddress)
    call keeppetTokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require stor2 + stor3 >= stor2
    require ext_code.size(refundVaultAddress)
    if stor2 + stor3 >= 925 * 10^14 * 3600:
        call refundVaultAddress.close() with:
             gas gas_remaining - 710 wei
    else:
        call refundVaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= 2 * 10^15
    require block.timestamp >= 420756 * 3600
    require block.timestamp < 421116 * 3600
    require stor3 + stor2 < 1400 * 10^18
    require ext_code.size(keeppetTokenAddress)
    call keeppetTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp < 420756 * 3600:
        if block.timestamp <= stor11 + (420756 * 3600):
            require msg.value >= 0
            if stor3 + stor2 >= stor7:
                if stor3 + stor2 >= stor8:
                    if stor3 + stor2 >= stor9:
                        if stor3 + stor2 >= stor10:
                            if msg.value / 2 * 10^15:
                                require msg.value / 2 * 10^15
                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                require ext_code.size(keeppetTokenAddress)
                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 2 * 10^15
                                require ext_call.success
                                stor1 += msg.value / 2 * 10^15
                                stor3 += msg.value
                                stor4++
                                require ext_code.size(refundVaultAddress)
                                call refundVaultAddress.deposit(address rg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require msg.value / 2 * 10^15
                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                if msg.value / msg.value / 2 * 10^15:
                                    require msg.value / msg.value / 2 * 10^15
                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                require ext_code.size(keeppetTokenAddress)
                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                stor1 += ext_call.return_data[0]
                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                stor4++
                                require ext_code.size(refundVaultAddress)
                                call refundVaultAddress.deposit(address rg1) with:
                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                                call msg.sender with:
                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if stor10 > stor3 + stor2 + msg.value:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                    if msg.value / msg.value / 2 * 10^15:
                                        require msg.value / msg.value / 2 * 10^15
                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += 2 * msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require 2 * msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                        require msg.value / 2 * msg.value / 2 * 10^15
                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                    else:
                        if stor9 <= stor3 + stor2 + msg.value:
                            if msg.value / 2 * 10^15:
                                require msg.value / 2 * 10^15
                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                require ext_code.size(keeppetTokenAddress)
                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                require ext_call.success
                                stor1 += 2 * msg.value / 2 * 10^15
                                stor3 += msg.value
                                stor4++
                                require ext_code.size(refundVaultAddress)
                                call refundVaultAddress.deposit(address rg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require 2 * msg.value / 2 * 10^15
                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                if msg.value / 2 * msg.value / 2 * 10^15:
                                    require msg.value / 2 * msg.value / 2 * 10^15
                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                require ext_code.size(keeppetTokenAddress)
                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                stor1 += ext_call.return_data[0]
                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                stor4++
                                require ext_code.size(refundVaultAddress)
                                call refundVaultAddress.deposit(address rg1) with:
                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                                call msg.sender with:
                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if stor3 + stor2 >= stor10:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                    if msg.value / msg.value / 2 * 10^15:
                                        require msg.value / msg.value / 2 * 10^15
                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor10 > stor3 + stor2 + msg.value:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                        if msg.value / msg.value / 2 * 10^15:
                                            require msg.value / msg.value / 2 * 10^15
                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += 2 * msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require 2 * msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                            require msg.value / 2 * msg.value / 2 * 10^15
                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                else:
                    if stor8 <= stor3 + stor2 + msg.value:
                        if msg.value / 2 * 10^15:
                            require msg.value / 2 * 10^15
                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                            require ext_code.size(keeppetTokenAddress)
                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 2 * msg.value / 2 * 10^15
                            require ext_call.success
                            stor1 += 2 * msg.value / 2 * 10^15
                            stor3 += msg.value
                            stor4++
                            require ext_code.size(refundVaultAddress)
                            call refundVaultAddress.deposit(address rg1) with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                        else:
                            require 2 * msg.value / 2 * 10^15
                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                            if msg.value / 2 * msg.value / 2 * 10^15:
                                require msg.value / 2 * msg.value / 2 * 10^15
                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                            require ext_code.size(keeppetTokenAddress)
                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            stor1 += ext_call.return_data[0]
                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                            stor4++
                            require ext_code.size(refundVaultAddress)
                            call refundVaultAddress.deposit(address rg1) with:
                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                            call msg.sender with:
                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if stor3 + stor2 >= stor9:
                            if stor3 + stor2 >= stor10:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                    if msg.value / msg.value / 2 * 10^15:
                                        require msg.value / msg.value / 2 * 10^15
                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor10 > stor3 + stor2 + msg.value:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                        if msg.value / msg.value / 2 * 10^15:
                                            require msg.value / msg.value / 2 * 10^15
                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += 2 * msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require 2 * msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                            require msg.value / 2 * msg.value / 2 * 10^15
                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                        else:
                            if stor9 <= stor3 + stor2 + msg.value:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += 2 * msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require 2 * msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                        require msg.value / 2 * msg.value / 2 * 10^15
                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor3 + stor2 >= stor10:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                        if msg.value / msg.value / 2 * 10^15:
                                            require msg.value / msg.value / 2 * 10^15
                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor10 > stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                            if msg.value / msg.value / 2 * 10^15:
                                                require msg.value / msg.value / 2 * 10^15
                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
            else:
                if stor7 <= stor3 + stor2 + msg.value:
                    if msg.value / 2 * 10^15:
                        require msg.value / 2 * 10^15
                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                        require ext_code.size(keeppetTokenAddress)
                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 2 * msg.value / 2 * 10^15
                        require ext_call.success
                        stor1 += 2 * msg.value / 2 * 10^15
                        stor3 += msg.value
                        stor4++
                        require ext_code.size(refundVaultAddress)
                        call refundVaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                    else:
                        require 2 * msg.value / 2 * 10^15
                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                        if msg.value / 2 * msg.value / 2 * 10^15:
                            require msg.value / 2 * msg.value / 2 * 10^15
                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                        require ext_code.size(keeppetTokenAddress)
                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        stor1 += ext_call.return_data[0]
                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                        stor4++
                        require ext_code.size(refundVaultAddress)
                        call refundVaultAddress.deposit(address rg1) with:
                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        call msg.sender with:
                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if stor3 + stor2 >= stor8:
                        if stor3 + stor2 >= stor9:
                            if stor3 + stor2 >= stor10:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                    if msg.value / msg.value / 2 * 10^15:
                                        require msg.value / msg.value / 2 * 10^15
                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor10 > stor3 + stor2 + msg.value:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                        if msg.value / msg.value / 2 * 10^15:
                                            require msg.value / msg.value / 2 * 10^15
                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += 2 * msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require 2 * msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                            require msg.value / 2 * msg.value / 2 * 10^15
                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                        else:
                            if stor9 <= stor3 + stor2 + msg.value:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += 2 * msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require 2 * msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                        require msg.value / 2 * msg.value / 2 * 10^15
                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor3 + stor2 >= stor10:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                        if msg.value / msg.value / 2 * 10^15:
                                            require msg.value / msg.value / 2 * 10^15
                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor10 > stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                            if msg.value / msg.value / 2 * 10^15:
                                                require msg.value / msg.value / 2 * 10^15
                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                    else:
                        if stor8 <= stor3 + stor2 + msg.value:
                            if msg.value / 2 * 10^15:
                                require msg.value / 2 * 10^15
                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                require ext_code.size(keeppetTokenAddress)
                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                require ext_call.success
                                stor1 += 2 * msg.value / 2 * 10^15
                                stor3 += msg.value
                                stor4++
                                require ext_code.size(refundVaultAddress)
                                call refundVaultAddress.deposit(address rg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require 2 * msg.value / 2 * 10^15
                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                if msg.value / 2 * msg.value / 2 * 10^15:
                                    require msg.value / 2 * msg.value / 2 * 10^15
                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                require ext_code.size(keeppetTokenAddress)
                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ext_call.return_data[0]
                                require ext_call.success
                                stor1 += ext_call.return_data[0]
                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                stor4++
                                require ext_code.size(refundVaultAddress)
                                call refundVaultAddress.deposit(address rg1) with:
                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                                call msg.sender with:
                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if stor3 + stor2 >= stor9:
                                if stor3 + stor2 >= stor10:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                        if msg.value / msg.value / 2 * 10^15:
                                            require msg.value / msg.value / 2 * 10^15
                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor10 > stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                            if msg.value / msg.value / 2 * 10^15:
                                                require msg.value / msg.value / 2 * 10^15
                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                            else:
                                if stor9 <= stor3 + stor2 + msg.value:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += 2 * msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require 2 * msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                            require msg.value / 2 * msg.value / 2 * 10^15
                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor3 + stor2 >= stor10:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                            if msg.value / msg.value / 2 * 10^15:
                                                require msg.value / msg.value / 2 * 10^15
                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor10 > stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
        else:
            if block.timestamp <= (2 * stor11) + (420756 * 3600):
                if msg.value / 2 * 10^15:
                    require msg.value / 2 * 10^15
                    require 4 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 4
                if ext_call.return_data[0] >= 4 * msg.value / 2 * 10^15:
                    require ext_code.size(keeppetTokenAddress)
                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 4 * msg.value / 2 * 10^15
                    require ext_call.success
                    stor1 += 4 * msg.value / 2 * 10^15
                    stor3 += msg.value
                    stor4++
                    require ext_code.size(refundVaultAddress)
                    call refundVaultAddress.deposit(address rg1) with:
                       value msg.value wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    require ext_call.success
                else:
                    require 4 * msg.value / 2 * 10^15
                    require ext_call.return_data[0] <= 4 * msg.value / 2 * 10^15
                    if msg.value / 4 * msg.value / 2 * 10^15:
                        require msg.value / 4 * msg.value / 2 * 10^15
                        require (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15) / msg.value / 4 * msg.value / 2 * 10^15 == (4 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                    require ext_code.size(keeppetTokenAddress)
                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    stor1 += ext_call.return_data[0]
                    stor3 = stor3 + msg.value - (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15)
                    stor4++
                    require ext_code.size(refundVaultAddress)
                    call refundVaultAddress.deposit(address rg1) with:
                       value msg.value - (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15) wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    require ext_call.success
                    call msg.sender with:
                       value (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15) wei
                         gas 2300 * is_zero(value) wei
            else:
                if block.timestamp <= (3 * stor11) + (420756 * 3600):
                    if msg.value / 2 * 10^15:
                        require msg.value / 2 * 10^15
                        require 3 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 3
                    if ext_call.return_data[0] >= 3 * msg.value / 2 * 10^15:
                        require ext_code.size(keeppetTokenAddress)
                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 3 * msg.value / 2 * 10^15
                        require ext_call.success
                        stor1 += 3 * msg.value / 2 * 10^15
                        stor3 += msg.value
                        stor4++
                        require ext_code.size(refundVaultAddress)
                        call refundVaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                    else:
                        require 3 * msg.value / 2 * 10^15
                        require ext_call.return_data[0] <= 3 * msg.value / 2 * 10^15
                        if msg.value / 3 * msg.value / 2 * 10^15:
                            require msg.value / 3 * msg.value / 2 * 10^15
                            require (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15) / msg.value / 3 * msg.value / 2 * 10^15 == (3 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                        require ext_code.size(keeppetTokenAddress)
                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        stor1 += ext_call.return_data[0]
                        stor3 = stor3 + msg.value - (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15)
                        stor4++
                        require ext_code.size(refundVaultAddress)
                        call refundVaultAddress.deposit(address rg1) with:
                           value msg.value - (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15) wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        call msg.sender with:
                           value (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.timestamp <= (4 * stor11) + (420756 * 3600):
                        if msg.value / 2 * 10^15:
                            require msg.value / 2 * 10^15
                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                            require ext_code.size(keeppetTokenAddress)
                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 2 * msg.value / 2 * 10^15
                            require ext_call.success
                            stor1 += 2 * msg.value / 2 * 10^15
                            stor3 += msg.value
                            stor4++
                            require ext_code.size(refundVaultAddress)
                            call refundVaultAddress.deposit(address rg1) with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                        else:
                            require 2 * msg.value / 2 * 10^15
                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                            if msg.value / 2 * msg.value / 2 * 10^15:
                                require msg.value / 2 * msg.value / 2 * 10^15
                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                            require ext_code.size(keeppetTokenAddress)
                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            stor1 += ext_call.return_data[0]
                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                            stor4++
                            require ext_code.size(refundVaultAddress)
                            call refundVaultAddress.deposit(address rg1) with:
                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                            call msg.sender with:
                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= 0
                        if stor3 + stor2 >= stor7:
                            if stor3 + stor2 >= stor8:
                                if stor3 + stor2 >= stor9:
                                    if stor3 + stor2 >= stor10:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                            if msg.value / msg.value / 2 * 10^15:
                                                require msg.value / msg.value / 2 * 10^15
                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor10 > stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    if stor9 <= stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor3 + stor2 >= stor10:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor10 > stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor8 <= stor3 + stor2 + msg.value:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += 2 * msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require 2 * msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                            require msg.value / 2 * msg.value / 2 * 10^15
                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor3 + stor2 >= stor9:
                                        if stor3 + stor2 >= stor10:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor10 > stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        if stor9 <= stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor3 + stor2 >= stor10:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor10 > stor3 + stor2 + msg.value:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += 2 * msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require 2 * msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                                            require msg.value / 2 * msg.value / 2 * 10^15
                                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                        else:
                            if stor7 <= stor3 + stor2 + msg.value:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += 2 * msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require 2 * msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                        require msg.value / 2 * msg.value / 2 * 10^15
                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor3 + stor2 >= stor8:
                                    if stor3 + stor2 >= stor9:
                                        if stor3 + stor2 >= stor10:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor10 > stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        if stor9 <= stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor3 + stor2 >= stor10:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor10 > stor3 + stor2 + msg.value:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += 2 * msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require 2 * msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                                            require msg.value / 2 * msg.value / 2 * 10^15
                                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor8 <= stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor3 + stor2 >= stor9:
                                            if stor3 + stor2 >= stor10:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor10 > stor3 + stor2 + msg.value:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += 2 * msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require 2 * msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                                            require msg.value / 2 * msg.value / 2 * 10^15
                                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                        else:
                                            if stor9 <= stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor3 + stor2 >= stor10:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if stor10 > stor3 + stor2 + msg.value:
                                                        if msg.value / 2 * 10^15:
                                                            require msg.value / 2 * 10^15
                                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value / 2 * 10^15
                                                            require ext_call.success
                                                            stor1 += msg.value / 2 * 10^15
                                                            stor3 += msg.value
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                        else:
                                                            require msg.value / 2 * 10^15
                                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                            if msg.value / msg.value / 2 * 10^15:
                                                                require msg.value / msg.value / 2 * 10^15
                                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            require ext_call.success
                                                            stor1 += ext_call.return_data[0]
                                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                            call msg.sender with:
                                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                                 gas 2300 * is_zero(value) wei
                                                    else:
                                                        if msg.value / 2 * 10^15:
                                                            require msg.value / 2 * 10^15
                                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                                            require ext_call.success
                                                            stor1 += 2 * msg.value / 2 * 10^15
                                                            stor3 += msg.value
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                        else:
                                                            require 2 * msg.value / 2 * 10^15
                                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            require ext_call.success
                                                            stor1 += ext_call.return_data[0]
                                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                            call msg.sender with:
                                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                                 gas 2300 * is_zero(value) wei
    else:
        if block.timestamp <= stor11 + (420756 * 3600):
            if msg.value / 2 * 10^15:
                require msg.value / 2 * 10^15
                require 5 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 5
            if ext_call.return_data[0] >= 5 * msg.value / 2 * 10^15:
                require ext_code.size(keeppetTokenAddress)
                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 5 * msg.value / 2 * 10^15
                require ext_call.success
                stor1 += 5 * msg.value / 2 * 10^15
                stor3 += msg.value
                stor4++
                require ext_code.size(refundVaultAddress)
                call refundVaultAddress.deposit(address rg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
            else:
                require 5 * msg.value / 2 * 10^15
                require ext_call.return_data[0] <= 5 * msg.value / 2 * 10^15
                if msg.value / 5 * msg.value / 2 * 10^15:
                    require msg.value / 5 * msg.value / 2 * 10^15
                    require (5 * msg.value / 2 * 10^15 * msg.value / 5 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 5 * msg.value / 2 * 10^15) / msg.value / 5 * msg.value / 2 * 10^15 == (5 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                require ext_code.size(keeppetTokenAddress)
                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                stor1 += ext_call.return_data[0]
                stor3 = stor3 + msg.value - (5 * msg.value / 2 * 10^15 * msg.value / 5 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 5 * msg.value / 2 * 10^15)
                stor4++
                require ext_code.size(refundVaultAddress)
                call refundVaultAddress.deposit(address rg1) with:
                   value msg.value - (5 * msg.value / 2 * 10^15 * msg.value / 5 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 5 * msg.value / 2 * 10^15) wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
                call msg.sender with:
                   value (5 * msg.value / 2 * 10^15 * msg.value / 5 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 5 * msg.value / 2 * 10^15) wei
                     gas 2300 * is_zero(value) wei
        else:
            if block.timestamp <= (2 * stor11) + (420756 * 3600):
                if msg.value / 2 * 10^15:
                    require msg.value / 2 * 10^15
                    require 4 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 4
                if ext_call.return_data[0] >= 4 * msg.value / 2 * 10^15:
                    require ext_code.size(keeppetTokenAddress)
                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 4 * msg.value / 2 * 10^15
                    require ext_call.success
                    stor1 += 4 * msg.value / 2 * 10^15
                    stor3 += msg.value
                    stor4++
                    require ext_code.size(refundVaultAddress)
                    call refundVaultAddress.deposit(address rg1) with:
                       value msg.value wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    require ext_call.success
                else:
                    require 4 * msg.value / 2 * 10^15
                    require ext_call.return_data[0] <= 4 * msg.value / 2 * 10^15
                    if msg.value / 4 * msg.value / 2 * 10^15:
                        require msg.value / 4 * msg.value / 2 * 10^15
                        require (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15) / msg.value / 4 * msg.value / 2 * 10^15 == (4 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                    require ext_code.size(keeppetTokenAddress)
                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    stor1 += ext_call.return_data[0]
                    stor3 = stor3 + msg.value - (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15)
                    stor4++
                    require ext_code.size(refundVaultAddress)
                    call refundVaultAddress.deposit(address rg1) with:
                       value msg.value - (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15) wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    require ext_call.success
                    call msg.sender with:
                       value (4 * msg.value / 2 * 10^15 * msg.value / 4 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 4 * msg.value / 2 * 10^15) wei
                         gas 2300 * is_zero(value) wei
            else:
                if block.timestamp <= (3 * stor11) + (420756 * 3600):
                    if msg.value / 2 * 10^15:
                        require msg.value / 2 * 10^15
                        require 3 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 3
                    if ext_call.return_data[0] >= 3 * msg.value / 2 * 10^15:
                        require ext_code.size(keeppetTokenAddress)
                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 3 * msg.value / 2 * 10^15
                        require ext_call.success
                        stor1 += 3 * msg.value / 2 * 10^15
                        stor3 += msg.value
                        stor4++
                        require ext_code.size(refundVaultAddress)
                        call refundVaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                    else:
                        require 3 * msg.value / 2 * 10^15
                        require ext_call.return_data[0] <= 3 * msg.value / 2 * 10^15
                        if msg.value / 3 * msg.value / 2 * 10^15:
                            require msg.value / 3 * msg.value / 2 * 10^15
                            require (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15) / msg.value / 3 * msg.value / 2 * 10^15 == (3 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                        require ext_code.size(keeppetTokenAddress)
                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        stor1 += ext_call.return_data[0]
                        stor3 = stor3 + msg.value - (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15)
                        stor4++
                        require ext_code.size(refundVaultAddress)
                        call refundVaultAddress.deposit(address rg1) with:
                           value msg.value - (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15) wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        call msg.sender with:
                           value (3 * msg.value / 2 * 10^15 * msg.value / 3 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 3 * msg.value / 2 * 10^15) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.timestamp <= (4 * stor11) + (420756 * 3600):
                        if msg.value / 2 * 10^15:
                            require msg.value / 2 * 10^15
                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                            require ext_code.size(keeppetTokenAddress)
                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 2 * msg.value / 2 * 10^15
                            require ext_call.success
                            stor1 += 2 * msg.value / 2 * 10^15
                            stor3 += msg.value
                            stor4++
                            require ext_code.size(refundVaultAddress)
                            call refundVaultAddress.deposit(address rg1) with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                        else:
                            require 2 * msg.value / 2 * 10^15
                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                            if msg.value / 2 * msg.value / 2 * 10^15:
                                require msg.value / 2 * msg.value / 2 * 10^15
                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                            require ext_code.size(keeppetTokenAddress)
                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            stor1 += ext_call.return_data[0]
                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                            stor4++
                            require ext_code.size(refundVaultAddress)
                            call refundVaultAddress.deposit(address rg1) with:
                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                            call msg.sender with:
                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= 0
                        if stor3 + stor2 >= stor7:
                            if stor3 + stor2 >= stor8:
                                if stor3 + stor2 >= stor9:
                                    if stor3 + stor2 >= stor10:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                            if msg.value / msg.value / 2 * 10^15:
                                                require msg.value / msg.value / 2 * 10^15
                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor10 > stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    if stor9 <= stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor3 + stor2 >= stor10:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor10 > stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor8 <= stor3 + stor2 + msg.value:
                                    if msg.value / 2 * 10^15:
                                        require msg.value / 2 * 10^15
                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                        require ext_call.success
                                        stor1 += 2 * msg.value / 2 * 10^15
                                        stor3 += msg.value
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                    else:
                                        require 2 * msg.value / 2 * 10^15
                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                            require msg.value / 2 * msg.value / 2 * 10^15
                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                        require ext_code.size(keeppetTokenAddress)
                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, ext_call.return_data[0]
                                        require ext_call.success
                                        stor1 += ext_call.return_data[0]
                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                        stor4++
                                        require ext_code.size(refundVaultAddress)
                                        call refundVaultAddress.deposit(address rg1) with:
                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                                        call msg.sender with:
                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor3 + stor2 >= stor9:
                                        if stor3 + stor2 >= stor10:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor10 > stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        if stor9 <= stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor3 + stor2 >= stor10:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor10 > stor3 + stor2 + msg.value:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += 2 * msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require 2 * msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                                            require msg.value / 2 * msg.value / 2 * 10^15
                                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                        else:
                            if stor7 <= stor3 + stor2 + msg.value:
                                if msg.value / 2 * 10^15:
                                    require msg.value / 2 * 10^15
                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                    require ext_call.success
                                    stor1 += 2 * msg.value / 2 * 10^15
                                    stor3 += msg.value
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require 2 * msg.value / 2 * 10^15
                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                        require msg.value / 2 * msg.value / 2 * 10^15
                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                    require ext_code.size(keeppetTokenAddress)
                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    require ext_call.success
                                    stor1 += ext_call.return_data[0]
                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                    stor4++
                                    require ext_code.size(refundVaultAddress)
                                    call refundVaultAddress.deposit(address rg1) with:
                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                    call msg.sender with:
                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if stor3 + stor2 >= stor8:
                                    if stor3 + stor2 >= stor9:
                                        if stor3 + stor2 >= stor10:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                            if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                if msg.value / msg.value / 2 * 10^15:
                                                    require msg.value / msg.value / 2 * 10^15
                                                    require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor10 > stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        if stor9 <= stor3 + stor2 + msg.value:
                                            if msg.value / 2 * 10^15:
                                                require msg.value / 2 * 10^15
                                                require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                            if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 2 * msg.value / 2 * 10^15
                                                require ext_call.success
                                                stor1 += 2 * msg.value / 2 * 10^15
                                                stor3 += msg.value
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                            else:
                                                require 2 * msg.value / 2 * 10^15
                                                require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                if msg.value / 2 * msg.value / 2 * 10^15:
                                                    require msg.value / 2 * msg.value / 2 * 10^15
                                                    require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                require ext_code.size(keeppetTokenAddress)
                                                call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                require ext_call.success
                                                stor1 += ext_call.return_data[0]
                                                stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                stor4++
                                                require ext_code.size(refundVaultAddress)
                                                call refundVaultAddress.deposit(address rg1) with:
                                                   value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
                                                require ext_call.success
                                                call msg.sender with:
                                                   value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if stor3 + stor2 >= stor10:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor10 > stor3 + stor2 + msg.value:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += 2 * msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require 2 * msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                                            require msg.value / 2 * msg.value / 2 * 10^15
                                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                else:
                                    if stor8 <= stor3 + stor2 + msg.value:
                                        if msg.value / 2 * 10^15:
                                            require msg.value / 2 * 10^15
                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                            require ext_call.success
                                            stor1 += 2 * msg.value / 2 * 10^15
                                            stor3 += msg.value
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                        else:
                                            require 2 * msg.value / 2 * 10^15
                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                            require ext_code.size(keeppetTokenAddress)
                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            require ext_call.success
                                            stor1 += ext_call.return_data[0]
                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                            stor4++
                                            require ext_code.size(refundVaultAddress)
                                            call refundVaultAddress.deposit(address rg1) with:
                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                            require ext_call.success
                                            call msg.sender with:
                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if stor3 + stor2 >= stor9:
                                            if stor3 + stor2 >= stor10:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                    if msg.value / msg.value / 2 * 10^15:
                                                        require msg.value / msg.value / 2 * 10^15
                                                        require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor10 > stor3 + stor2 + msg.value:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                    if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 2 * msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += 2 * msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require 2 * msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                        if msg.value / 2 * msg.value / 2 * 10^15:
                                                            require msg.value / 2 * msg.value / 2 * 10^15
                                                            require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                        else:
                                            if stor9 <= stor3 + stor2 + msg.value:
                                                if msg.value / 2 * 10^15:
                                                    require msg.value / 2 * 10^15
                                                    require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2 * msg.value / 2 * 10^15
                                                    require ext_call.success
                                                    stor1 += 2 * msg.value / 2 * 10^15
                                                    stor3 += msg.value
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                else:
                                                    require 2 * msg.value / 2 * 10^15
                                                    require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                    if msg.value / 2 * msg.value / 2 * 10^15:
                                                        require msg.value / 2 * msg.value / 2 * 10^15
                                                        require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                    require ext_code.size(keeppetTokenAddress)
                                                    call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    require ext_call.success
                                                    stor1 += ext_call.return_data[0]
                                                    stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                    stor4++
                                                    require ext_code.size(refundVaultAddress)
                                                    call refundVaultAddress.deposit(address rg1) with:
                                                       value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas gas_remaining - 9710 wei
                                                        args msg.sender
                                                    require ext_call.success
                                                    call msg.sender with:
                                                       value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if stor3 + stor2 >= stor10:
                                                    if msg.value / 2 * 10^15:
                                                        require msg.value / 2 * 10^15
                                                        require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                    if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value / 2 * 10^15
                                                        require ext_call.success
                                                        stor1 += msg.value / 2 * 10^15
                                                        stor3 += msg.value
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                    else:
                                                        require msg.value / 2 * 10^15
                                                        require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                        if msg.value / msg.value / 2 * 10^15:
                                                            require msg.value / msg.value / 2 * 10^15
                                                            require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                        require ext_code.size(keeppetTokenAddress)
                                                        call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        require ext_call.success
                                                        stor1 += ext_call.return_data[0]
                                                        stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                        stor4++
                                                        require ext_code.size(refundVaultAddress)
                                                        call refundVaultAddress.deposit(address rg1) with:
                                                           value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas gas_remaining - 9710 wei
                                                            args msg.sender
                                                        require ext_call.success
                                                        call msg.sender with:
                                                           value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if stor10 > stor3 + stor2 + msg.value:
                                                        if msg.value / 2 * 10^15:
                                                            require msg.value / 2 * 10^15
                                                            require msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 1
                                                        if ext_call.return_data[0] >= msg.value / 2 * 10^15:
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value / 2 * 10^15
                                                            require ext_call.success
                                                            stor1 += msg.value / 2 * 10^15
                                                            stor3 += msg.value
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                        else:
                                                            require msg.value / 2 * 10^15
                                                            require ext_call.return_data[0] <= msg.value / 2 * 10^15
                                                            if msg.value / msg.value / 2 * 10^15:
                                                                require msg.value / msg.value / 2 * 10^15
                                                                require (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) / msg.value / msg.value / 2 * 10^15 == (msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            require ext_call.success
                                                            stor1 += ext_call.return_data[0]
                                                            stor3 = stor3 + msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15)
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value - (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                            call msg.sender with:
                                                               value (msg.value / 2 * 10^15 * msg.value / msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / msg.value / 2 * 10^15) wei
                                                                 gas 2300 * is_zero(value) wei
                                                    else:
                                                        if msg.value / 2 * 10^15:
                                                            require msg.value / 2 * 10^15
                                                            require 2 * msg.value / 2 * 10^15 / msg.value / 2 * 10^15 == 2
                                                        if ext_call.return_data[0] >= 2 * msg.value / 2 * 10^15:
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, 2 * msg.value / 2 * 10^15
                                                            require ext_call.success
                                                            stor1 += 2 * msg.value / 2 * 10^15
                                                            stor3 += msg.value
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                        else:
                                                            require 2 * msg.value / 2 * 10^15
                                                            require ext_call.return_data[0] <= 2 * msg.value / 2 * 10^15
                                                            if msg.value / 2 * msg.value / 2 * 10^15:
                                                                require msg.value / 2 * msg.value / 2 * 10^15
                                                                require (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) / msg.value / 2 * msg.value / 2 * 10^15 == (2 * msg.value / 2 * 10^15) - ext_call.return_data[0]
                                                            require ext_code.size(keeppetTokenAddress)
                                                            call keeppetTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            require ext_call.success
                                                            stor1 += ext_call.return_data[0]
                                                            stor3 = stor3 + msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15)
                                                            stor4++
                                                            require ext_code.size(refundVaultAddress)
                                                            call refundVaultAddress.deposit(address rg1) with:
                                                               value msg.value - (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) + (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                                 gas gas_remaining - 9710 wei
                                                                args msg.sender
                                                            require ext_call.success
                                                            call msg.sender with:
                                                               value (2 * msg.value / 2 * 10^15 * msg.value / 2 * msg.value / 2 * 10^15) - (ext_call.return_data[0] * msg.value / 2 * msg.value / 2 * 10^15) wei
                                                                 gas 2300 * is_zero(value) wei
}



}

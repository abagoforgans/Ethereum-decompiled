contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20;

function _fallback() payable {
    stor0 = 0
    stor1 = 1000
    stor2 = 2179
    stor3 = 446
    stor4 = 971
    create contract with 0 wei
                    code: code.data[4920 len 3092], address(this.address)
    require create.new_address
    stor5 = address(create.new_address)
    stor15 = 0
    stor16 = 4000000 * 10^18
    stor17 = 10000000 * 10^18
    stor18 = 24000000 * 10^18
    stor19 = 16000000 * 10^18
    stor20 = 0
    require not msg.value
    stor6 = code.data[8024 len 20]
    stor7 = code.data[8056 len 20]
    stor8 = code.data[8088 len 20]
    stor9 = code.data[8120 len 20]
    stor10 = code.data[8152 len 20]
    stor11 = code.data[8184 len 20]
    stor12 = code.data[8216 len 20]
    stor13 = code.data[8248 len 20]
    stor14 = code.data[8280 len 20]
    return code.data[471 len 4449]
}



// =====================  Runtime code  =====================


const Tokens_For_Sale = 146000000 * 10^18

const Total_Amount = 200000000 * 10^18


uint256 sold;
uint256 stor1;
uint256 tokens_Per_Dollar;
uint256 rate_Eth;
uint256 token_Price;
address datAddress;
address companyAddress;
address bountyFundAddress;
address supportFundAddress;
address reserveFundAddress;
address teamFundAddress;
address managerAddress;
address controller_Address1;
address controller_Address2;
address controller_Address3;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20;

function SupportFund() {
    return supportFundAddress
}

function Controller_Address1() {
    return controller_Address1
}

function Controller_Address3() {
    return controller_Address3
}

function BountyFund() {
    return bountyFundAddress
}

function TeamFund() {
    return teamFundAddress
}

function Company() {
    return companyAddress
}

function Token_Price() {
    return token_Price
}

function dat() {
    return datAddress
}

function Manager() {
    return managerAddress
}

function Tokens_Per_Dollar() {
    return tokens_Per_Dollar
}

function Controller_Address2() {
    return controller_Address2
}

function ReserveFund() {
    return reserveFundAddress
}

function Sold() {
    return sold
}

function Rate_Eth() {
    return rate_Eth
}

function pauseIco() {
    require managerAddress == msg.sender
    require stor20 <= 6
    require stor20 == 5
    stor20 = 4
    emit LogPause()
}

function pausePreIco() {
    require managerAddress == msg.sender
    require stor20 <= 6
    require stor20 == 1
    stor20 = 3
    emit LogPause()
}

function setRate(uint256 arg1) {
    require managerAddress == msg.sender
    rate_Eth = arg1
    require stor1
    token_Price = arg1 * tokens_Per_Dollar / stor1
}

function finishPreIco() {
    require managerAddress == msg.sender
    require stor20 <= 6
    if stor20 != 1:
        require stor20 <= 6
        require stor20 == 3
    stor20 = 2
    emit LogFinishPreICO()
}

function startIco() {
    require managerAddress == msg.sender
    require stor20 <= 6
    require stor20 <= 6
    if stor20 != 2:
        require stor20 == 4
    if stor20 == 2:
        stor15 = block.timestamp
    stor20 = 5
    emit LogStartICO()
}

function withdrawEther(uint256 arg1) {
    require managerAddress == msg.sender
    require stor20 <= 6
    if stor20 != 2:
        require stor20 <= 6
        require stor20 == 6
    call companyAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finishIco() {
    require managerAddress == msg.sender
    require stor20 <= 6
    if stor20 != 5:
        require stor20 <= 6
        require stor20 == 4
    require ext_code.size(datAddress)
    call datAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 200000000 * 10^18
    require ext_code.size(datAddress)
    call datAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args reserveFundAddress, -ext_call.return_data[0] + 200000000 * 10^18
    require ext_call.success
    require ext_code.size(datAddress)
    call datAddress.defrost() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor20 = 6
    emit LogFinishICO(reserveFundAddress);
}

function startPreIco() {
    require managerAddress == msg.sender
    require stor20 <= 6
    require stor20 <= 6
    if stor20:
        require stor20 == 3
    if not stor20:
        require ext_code.size(datAddress)
        call datAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args bountyFundAddress, stor16
        require ext_call.success
        require ext_code.size(datAddress)
        call datAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args supportFundAddress, stor17
        require ext_call.success
        require ext_code.size(datAddress)
        call datAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args reserveFundAddress, stor18
        require ext_call.success
        require ext_code.size(datAddress)
        call datAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args teamFundAddress, stor19
        require ext_call.success
    stor20 = 1
    emit LogStartPreICO()
}

function getBonus(uint256 arg1) {
    require stor20 <= 6
    if stor20 == 1:
        if not arg1:
            return 0
        if 35 * arg1 / arg1 == 35:
            if 35 * arg1 == (100 * 35 * arg1 / 100) + (35 * arg1 % 100):
                return (35 * arg1 / 100)
    else:
        if block.timestamp <= stor15 + (6 * 3600):
            if not arg1:
                return 0
            if 30 * arg1 / arg1 == 30:
                if 30 * arg1 == (100 * 30 * arg1 / 100) + (30 * arg1 % 100):
                    return (30 * arg1 / 100)
        else:
            if block.timestamp <= stor15 + (12 * 3600):
                if not arg1:
                    return 0
                if 25 * arg1 / arg1 == 25:
                    if 25 * arg1 == (100 * 25 * arg1 / 100) + (25 * arg1 % 100):
                        return (25 * arg1 / 100)
            else:
                if block.timestamp <= stor15 + (24 * 3600):
                    if not arg1:
                        return 0
                    if 20 * arg1 / arg1 == 20:
                        if 20 * arg1 == (100 * 20 * arg1 / 100) + (20 * arg1 % 100):
                            return (20 * arg1 / 100)
                else:
                    if block.timestamp > stor15 + (48 * 24 * 3600):
                        return 0
                    if not arg1:
                        return 0
                    if 10 * arg1 / arg1 == 10:
                        if 10 * arg1 == (100 * 10 * arg1 / 100) + (10 * arg1 % 100):
                            return (10 * arg1 / 100)
    revert
}

function buyForInvestor(address arg1, uint256 arg2, string arg3) {
    if controller_Address1 != msg.sender:
        if controller_Address2 != msg.sender:
            require controller_Address3 == msg.sender
    require stor20 <= 6
    if stor20 != 1:
        require stor20 <= 6
        require stor20 == 5
    require arg2 > 0
    require stor20 <= 6
    if stor20 == 1:
        if not arg2:
            require arg2 >= arg2
            require sold + arg2 <= 146000000 * 10^18
            require ext_code.size(datAddress)
            call datAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2
        else:
            require 35 * arg2 / arg2 == 35
            require 35 * arg2 == (100 * 35 * arg2 / 100) + (35 * arg2 % 100)
            require (35 * arg2 / 100) + arg2 >= arg2
            require sold + (35 * arg2 / 100) + arg2 <= 146000000 * 10^18
            require ext_code.size(datAddress)
            call datAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (35 * arg2 / 100) + arg2
    else:
        if block.timestamp <= stor15 + (6 * 3600):
            if not arg2:
                require arg2 >= arg2
                require sold + arg2 <= 146000000 * 10^18
                require ext_code.size(datAddress)
                call datAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2
            else:
                require 30 * arg2 / arg2 == 30
                require 30 * arg2 == (100 * 30 * arg2 / 100) + (30 * arg2 % 100)
                require (30 * arg2 / 100) + arg2 >= arg2
                require sold + (30 * arg2 / 100) + arg2 <= 146000000 * 10^18
                require ext_code.size(datAddress)
                call datAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (30 * arg2 / 100) + arg2
        else:
            if block.timestamp <= stor15 + (12 * 3600):
                if not arg2:
                    require arg2 >= arg2
                    require sold + arg2 <= 146000000 * 10^18
                    require ext_code.size(datAddress)
                    call datAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2
                else:
                    require 25 * arg2 / arg2 == 25
                    require 25 * arg2 == (100 * 25 * arg2 / 100) + (25 * arg2 % 100)
                    require (25 * arg2 / 100) + arg2 >= arg2
                    require sold + (25 * arg2 / 100) + arg2 <= 146000000 * 10^18
                    require ext_code.size(datAddress)
                    call datAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (25 * arg2 / 100) + arg2
            else:
                if block.timestamp <= stor15 + (24 * 3600):
                    if not arg2:
                        require arg2 >= arg2
                        require sold + arg2 <= 146000000 * 10^18
                        require ext_code.size(datAddress)
                        call datAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                    else:
                        require 20 * arg2 / arg2 == 20
                        require 20 * arg2 == (100 * 20 * arg2 / 100) + (20 * arg2 % 100)
                        require (20 * arg2 / 100) + arg2 >= arg2
                        require sold + (20 * arg2 / 100) + arg2 <= 146000000 * 10^18
                        require ext_code.size(datAddress)
                        call datAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (20 * arg2 / 100) + arg2
                else:
                    if block.timestamp > stor15 + (48 * 24 * 3600):
                        require arg2 >= arg2
                        require sold + arg2 <= 146000000 * 10^18
                        require ext_code.size(datAddress)
                        call datAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                    else:
                        if not arg2:
                            require arg2 >= arg2
                            require sold + arg2 <= 146000000 * 10^18
                            require ext_code.size(datAddress)
                            call datAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                        else:
                            require 10 * arg2 / arg2 == 10
                            require 10 * arg2 == (100 * 10 * arg2 / 100) + (10 * arg2 % 100)
                            require (10 * arg2 / 100) + arg2 >= arg2
                            require sold + (10 * arg2 / 100) + arg2 <= 146000000 * 10^18
                            require ext_code.size(datAddress)
                            call datAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (10 * arg2 / 100) + arg2
    require ext_call.success
    require arg2 + sold >= sold
    sold += arg2
    emit LogBuyForInvestor(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}

function _fallback() payable {
    require stor20 <= 6
    if stor20 != 1:
        require stor20 <= 6
        require stor20 == 5
    require msg.value * token_Price > 0
    require stor20 <= 6
    if stor20 == 1:
        if not msg.value * token_Price:
            require msg.value * token_Price >= msg.value * token_Price
            require sold + (msg.value * token_Price) <= 146000000 * 10^18
            require ext_code.size(datAddress)
            call datAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * token_Price
        else:
            require 35 * msg.value * token_Price / msg.value * token_Price == 35
            require 35 * msg.value * token_Price == (100 * 35 * msg.value * token_Price / 100) + (35 * msg.value * token_Price % 100)
            require (35 * msg.value * token_Price / 100) + (msg.value * token_Price) >= msg.value * token_Price
            require sold + (35 * msg.value * token_Price / 100) + (msg.value * token_Price) <= 146000000 * 10^18
            require ext_code.size(datAddress)
            call datAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (35 * msg.value * token_Price / 100) + (msg.value * token_Price)
    else:
        if block.timestamp <= stor15 + (6 * 3600):
            if not msg.value * token_Price:
                require msg.value * token_Price >= msg.value * token_Price
                require sold + (msg.value * token_Price) <= 146000000 * 10^18
                require ext_code.size(datAddress)
                call datAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * token_Price
            else:
                require 30 * msg.value * token_Price / msg.value * token_Price == 30
                require 30 * msg.value * token_Price == (100 * 30 * msg.value * token_Price / 100) + (30 * msg.value * token_Price % 100)
                require (30 * msg.value * token_Price / 100) + (msg.value * token_Price) >= msg.value * token_Price
                require sold + (30 * msg.value * token_Price / 100) + (msg.value * token_Price) <= 146000000 * 10^18
                require ext_code.size(datAddress)
                call datAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (30 * msg.value * token_Price / 100) + (msg.value * token_Price)
        else:
            if block.timestamp <= stor15 + (12 * 3600):
                if not msg.value * token_Price:
                    require msg.value * token_Price >= msg.value * token_Price
                    require sold + (msg.value * token_Price) <= 146000000 * 10^18
                    require ext_code.size(datAddress)
                    call datAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * token_Price
                else:
                    require 25 * msg.value * token_Price / msg.value * token_Price == 25
                    require 25 * msg.value * token_Price == (100 * 25 * msg.value * token_Price / 100) + (25 * msg.value * token_Price % 100)
                    require (25 * msg.value * token_Price / 100) + (msg.value * token_Price) >= msg.value * token_Price
                    require sold + (25 * msg.value * token_Price / 100) + (msg.value * token_Price) <= 146000000 * 10^18
                    require ext_code.size(datAddress)
                    call datAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (25 * msg.value * token_Price / 100) + (msg.value * token_Price)
            else:
                if block.timestamp <= stor15 + (24 * 3600):
                    if not msg.value * token_Price:
                        require msg.value * token_Price >= msg.value * token_Price
                        require sold + (msg.value * token_Price) <= 146000000 * 10^18
                        require ext_code.size(datAddress)
                        call datAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * token_Price
                    else:
                        require 20 * msg.value * token_Price / msg.value * token_Price == 20
                        require 20 * msg.value * token_Price == (100 * 20 * msg.value * token_Price / 100) + (20 * msg.value * token_Price % 100)
                        require (20 * msg.value * token_Price / 100) + (msg.value * token_Price) >= msg.value * token_Price
                        require sold + (20 * msg.value * token_Price / 100) + (msg.value * token_Price) <= 146000000 * 10^18
                        require ext_code.size(datAddress)
                        call datAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (20 * msg.value * token_Price / 100) + (msg.value * token_Price)
                else:
                    if block.timestamp > stor15 + (48 * 24 * 3600):
                        require msg.value * token_Price >= msg.value * token_Price
                        require sold + (msg.value * token_Price) <= 146000000 * 10^18
                        require ext_code.size(datAddress)
                        call datAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * token_Price
                    else:
                        if not msg.value * token_Price:
                            require msg.value * token_Price >= msg.value * token_Price
                            require sold + (msg.value * token_Price) <= 146000000 * 10^18
                            require ext_code.size(datAddress)
                            call datAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * token_Price
                        else:
                            require 10 * msg.value * token_Price / msg.value * token_Price == 10
                            require 10 * msg.value * token_Price == (100 * 10 * msg.value * token_Price / 100) + (10 * msg.value * token_Price % 100)
                            require (10 * msg.value * token_Price / 100) + (msg.value * token_Price) >= msg.value * token_Price
                            require sold + (10 * msg.value * token_Price / 100) + (msg.value * token_Price) <= 146000000 * 10^18
                            require ext_code.size(datAddress)
                            call datAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10 * msg.value * token_Price / 100) + (msg.value * token_Price)
    require ext_call.success
    require (msg.value * token_Price) + sold >= sold
    sold += msg.value * token_Price
}



}

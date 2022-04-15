contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;
uint256 stor4;
uint8 stor5; offset 160
address stor5;

function _fallback() payable {
    stor0 = 0
    stor3 = 0
    stor4 = 0
    uint8(stor5.field_160) = 0
    require not msg.value
    create contract with 0 wei
                    code: code.data[5489 len 3030]
    require create.new_address
    address(stor5.field_0) = address(create.new_address)
    return code.data[149 len 5340]
}



// =====================  Runtime code  =====================


const TIER_3_BUYIN = 1250

const CHINESE_EXCHANGE_BUYIN = 1087

const DURATION = (720 * 24 * 3600)

const MIN_BUYIN_VALUE = 10^16

const TREASURY = 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd

const CHINESE_EXCHANGE_3 = 0xccc088ec38a4dbc15ba269a176883f6ba302ed8d

const BTC_SUISSE_TIER_4 = 0xb17c2f9a057a2640309e41358a22cf00f8b51626

const END_TIME = (419080 * 3600)

const TIER_2_BUYIN = 1111

const ADMINISTRATOR = 0x11bf17b890a80080a8f9c1673d2951296a6f3d91

const MAX_REVENUE = 425203 * 10^18

const LIQUID_ALLOCATION_PPM = 263000

const SALES_ALLOCATION_PPM = 400000

const LOCKED_ALLOCATION_PPM = 337000

const CHINESE_EXCHANGE_2 = 0x877da872d223ab3d073ab6f9b4bb27540e387c5f

const BTC_SUISSE_TIER_1 = 0x53b3d4f98fcb6f0920096fe1ccca0e4327da7a1d

const CHINESE_EXCHANGE_1 = 0x36f548fab37fcd39ca8725b8fa214fcd784fe0a3

const STANDARD_BUYIN = 1000

const BTC_SUISSE_TIER_2 = 0x642fdd12b1dd27b9e19758f0aefc072dae7ab996

const PREPURCHASER = 0xc269e9d02188e39c9922386de631c6aed5b4d4

const CERTIFIER = 0x7b1ab331546f021a40bd4d09ffb802261caaccc9

const BEGIN_TIME = (418360 * 3600)

const TIER_4_BUYIN = 1429

const CHINESE_EXCHANGE_4 = 0

const MAX_BUYIN_GAS_PRICE = 25 * 10^9

const BTC_SUISSE_TIER_3 = 0x64175446a1e3459c3e9d650ec26420ba90060d28


uint8 stor0;
uint256 liquidAllocatable;
uint256 lockedAllocatable;
uint256 saleRevenue;
uint256 totalSold;
uint8 stor5; offset 160
address tokensAddress;

function allocationsInitialised() {
    return bool(stor0)
}

function totalSold() {
    return totalSold
}

function tokens() {
    return tokensAddress
}

function isPaused() {
    return bool(stor5)
}

function saleRevenue() {
    return saleRevenue
}

function lockedAllocatable() {
    return lockedAllocatable
}

function liquidAllocatable() {
    return liquidAllocatable
}

function unpause() {
    require 0x11bf17b890a80080a8f9c1673d2951296a6f3d91 == msg.sender
    require block.timestamp >= 418360 * 3600
    require block.timestamp < 419080 * 3600
    require stor5
    stor5 = 0
    emit Unpaused()
}

function pause() {
    require 0x11bf17b890a80080a8f9c1673d2951296a6f3d91 == msg.sender
    require block.timestamp >= 418360 * 3600
    require block.timestamp < 419080 * 3600
    require not stor5
    stor5 = 1
    emit Paused()
}

function finalise() {
    require stor0
    require not liquidAllocatable
    require not lockedAllocatable
    require ext_code.size(tokensAddress)
    call tokensAddress.0xa4399263 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function initialiseAllocations() {
    if block.timestamp < 419080 * 3600:
        require saleRevenue >= 425203 * 10^18
    require not stor0
    stor0 = 1
    liquidAllocatable = 263000 * totalSold / 400000
    lockedAllocatable = 337000 * totalSold / 400000
}

function allocateLiquid(address arg1, uint256 arg2) {
    require 0x11bf17b890a80080a8f9c1673d2951296a6f3d91 == msg.sender
    require liquidAllocatable >= arg2
    require ext_code.size(tokensAddress)
    call tokensAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    liquidAllocatable -= arg2
    emit Allocated(arg2, 1, arg1);
}

function allocateLocked(address arg1, uint256 arg2) {
    require 0x11bf17b890a80080a8f9c1673d2951296a6f3d91 == msg.sender
    require lockedAllocatable >= arg2
    require ext_code.size(tokensAddress)
    call tokensAddress.mintLocked(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    lockedAllocatable -= arg2
    emit Allocated(arg2, 0, arg1);
}

function notePrepurchase(address arg1, uint256 arg2, uint256 arg3) {
    require 0xc269e9d02188e39c9922386de631c6aed5b4d4 == msg.sender
    require block.timestamp < 418360 * 3600
    require ext_code.size(tokensAddress)
    call tokensAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
    saleRevenue += arg2
    totalSold += arg3
    emit Prepurchased(arg2, arg3, arg1);
}

function buyinReturn(address arg1) {
    if 0x36f548fab37fcd39ca8725b8fa214fcd784fe0a3 == arg1:
        return 1087
    if 0x877da872d223ab3d073ab6f9b4bb27540e387c5f == arg1:
        return 1087
    if 0xccc088ec38a4dbc15ba269a176883f6ba302ed8d == arg1:
        return 1087
    if not arg1:
        return 1087
    if 0x53b3d4f98fcb6f0920096fe1ccca0e4327da7a1d == arg1:
        return 1000
    if 0x642fdd12b1dd27b9e19758f0aefc072dae7ab996 == arg1:
        return 1111
    if 0x64175446a1e3459c3e9d650ec26420ba90060d28 == arg1:
        return 1250
    if arg1 != 0xb17c2f9a057a2640309e41358a22cf00f8b51626:
        return 0
    return 1429
}

function _fallback() payable {
    require ext_code.size(0x7b1ab331546f021a40bd4d09ffb802261caaccc9)
    call 0x7b1ab331546f021a40bd4d09ffb802261caaccc9.certified(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= 418360 * 3600
    require block.timestamp < 419080 * 3600
    require not stor5
    require block.gasprice <= 25 * 10^9
    require msg.value >= 10^16
    require msg.value + saleRevenue <= 425203 * 10^18
    require ext_code.size(tokensAddress)
    call tokensAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 1000 * msg.value
    require ext_call.success
    call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    saleRevenue += msg.value
    totalSold += 1000 * msg.value
    emit Purchased(msg.value, msg.sender);
}

function purchaseTo(address arg1) payable {
    require ext_code.size(0x7b1ab331546f021a40bd4d09ffb802261caaccc9)
    call 0x7b1ab331546f021a40bd4d09ffb802261caaccc9.certified(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= 418360 * 3600
    require block.timestamp < 419080 * 3600
    require not stor5
    require block.gasprice <= 25 * 10^9
    require msg.value >= 10^16
    require msg.value + saleRevenue <= 425203 * 10^18
    require ext_code.size(tokensAddress)
    call tokensAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 1000 * msg.value
    require ext_call.success
    call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    saleRevenue += msg.value
    totalSold += 1000 * msg.value
    emit Purchased(msg.value, arg1);
}

function specialPurchase() payable {
    require block.timestamp < 418360 * 3600
    require msg.value + saleRevenue <= 425203 * 10^18
    if 0x36f548fab37fcd39ca8725b8fa214fcd784fe0a3 == msg.sender:
        require 1087 * msg.value > 0
        require ext_code.size(tokensAddress)
        call tokensAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 1087 * msg.value
        require ext_call.success
        call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        saleRevenue += msg.value
        totalSold += 1087 * msg.value
        emit SpecialPurchased(msg.value, 1087 * msg.value, msg.sender);
    else:
        if 0x877da872d223ab3d073ab6f9b4bb27540e387c5f == msg.sender:
            require 1087 * msg.value > 0
            require ext_code.size(tokensAddress)
            call tokensAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1087 * msg.value
            require ext_call.success
            call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            saleRevenue += msg.value
            totalSold += 1087 * msg.value
            emit SpecialPurchased(msg.value, 1087 * msg.value, msg.sender);
        else:
            if 0xccc088ec38a4dbc15ba269a176883f6ba302ed8d == msg.sender:
                require 1087 * msg.value > 0
                require ext_code.size(tokensAddress)
                call tokensAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1087 * msg.value
                require ext_call.success
                call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                saleRevenue += msg.value
                totalSold += 1087 * msg.value
                emit SpecialPurchased(msg.value, 1087 * msg.value, msg.sender);
            else:
                if not msg.sender:
                    require 1087 * msg.value > 0
                    require ext_code.size(tokensAddress)
                    call tokensAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1087 * msg.value
                    require ext_call.success
                    call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    saleRevenue += msg.value
                    totalSold += 1087 * msg.value
                    emit SpecialPurchased(msg.value, 1087 * msg.value, msg.sender);
                else:
                    if 0x53b3d4f98fcb6f0920096fe1ccca0e4327da7a1d == msg.sender:
                        require 1000 * msg.value > 0
                        require ext_code.size(tokensAddress)
                        call tokensAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1000 * msg.value
                        require ext_call.success
                        call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        saleRevenue += msg.value
                        totalSold += 1000 * msg.value
                        emit SpecialPurchased(msg.value, 1000 * msg.value, msg.sender);
                    else:
                        if 0x642fdd12b1dd27b9e19758f0aefc072dae7ab996 == msg.sender:
                            require 1111 * msg.value > 0
                            require ext_code.size(tokensAddress)
                            call tokensAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1111 * msg.value
                            require ext_call.success
                            call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            saleRevenue += msg.value
                            totalSold += 1111 * msg.value
                            emit SpecialPurchased(msg.value, 1111 * msg.value, msg.sender);
                        else:
                            if 0x64175446a1e3459c3e9d650ec26420ba90060d28 == msg.sender:
                                require 1250 * msg.value > 0
                                require ext_code.size(tokensAddress)
                                call tokensAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1250 * msg.value
                                require ext_call.success
                                call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                saleRevenue += msg.value
                                totalSold += 1250 * msg.value
                                emit SpecialPurchased(msg.value, 1250 * msg.value, msg.sender);
                            else:
                                require 0xb17c2f9a057a2640309e41358a22cf00f8b51626 == msg.sender
                                require 1429 * msg.value > 0
                                require ext_code.size(tokensAddress)
                                call tokensAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1429 * msg.value
                                require ext_call.success
                                call 0xb47ad434c6e401473f1d3442001ac69cda1dcfdd with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                saleRevenue += msg.value
                                totalSold += 1429 * msg.value
                                emit SpecialPurchased(msg.value, 1429 * msg.value, msg.sender);
}



}

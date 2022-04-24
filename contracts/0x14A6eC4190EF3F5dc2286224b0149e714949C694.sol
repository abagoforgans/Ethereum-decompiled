contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 2984]




// =====================  Runtime code  =====================


const MAXIMAL_PARTICIPATION = 1100 * 10^18

const TOKEN_PRICE_WEI = 85106382978723

const ETH_PRICE_USD = 470

const PRE_SALE_MAX_CAP = 6700 * 10^18

const SALES_DEADLINE = (420615 * 3600)

const MINIMAL_PARTICIPATION = 10 * 10^18

const BONUS = 20

const TOKEN_CENTS = 10^6

const TOKEN = 0x83984d6142934bb535793a82adb0a46ef0f66b6d

const ASSET_MANAGER_WALLET = 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5

const PRE_SALE_SOFT_CAP = 1000 * 10^18

const WHITELIST_SUPPLIER = 0x1ff21eca1c3ba96ed53783ab9c92ffbf77862584

const SALES_START = (420111 * 3600)


uint256 preSaleContributions;
mapping of uint256 participantContribution;
mapping of uint8 stor2;

function participantContribution(address arg1) {
    return participantContribution[arg1]
}

function preSaleContributions() {
    return preSaleContributions
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function isSoftCapReached() {
    return preSaleContributions >= 1000 * 10^18
}

function addToWhitelist(address arg1) {
    if msg.sender != 0x1ff21eca1c3ba96ed53783ab9c92ffbf77862584:
        require 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5 == msg.sender
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        emit WhitelistUpdated(address(arg1), 1);
    return 1
}

function removeFromWhitelist(address arg1) {
    if msg.sender != 0x1ff21eca1c3ba96ed53783ab9c92ffbf77862584:
        require 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5 == msg.sender
    if stor2[address(arg1)]:
        stor2[address(arg1)] = 0
        emit WhitelistUpdated(address(arg1), 0);
    return 1
}

function _fallback() payable {
    require block.timestamp >= 420111 * 3600
    require block.timestamp < 420615 * 3600
    require participantContribution[address(msg.sender)] + msg.value >= 10 * 10^18
    require participantContribution[address(msg.sender)] + msg.value <= 1100 * 10^18
    require preSaleContributions + msg.value <= 6700 * 10^18
    require stor2[address(msg.sender)]
    require 10^6 * msg.value / 85106382978723 > 0
    require ext_code.size(0x83984d6142934bb535793a82adb0a46ef0f66b6d)
    call 0x83984d6142934bb535793a82adb0a46ef0f66b6d.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5, msg.sender, (20 * 10^6 * msg.value / 85106382978723 / 100) + (10^6 * msg.value / 85106382978723)
    require ext_call.success
    require ext_call.return_data[0]
    preSaleContributions += msg.value
    participantContribution[address(msg.sender)] += msg.value
    call 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Contributed(msg.sender, msg.value, (20 * 10^6 * msg.value / 85106382978723 / 100) + (10^6 * msg.value / 85106382978723));
}

function contributeFor(address arg1) payable {
    require block.timestamp >= 420111 * 3600
    require block.timestamp < 420615 * 3600
    require participantContribution[address(arg1)] + msg.value >= 10 * 10^18
    require participantContribution[address(arg1)] + msg.value <= 1100 * 10^18
    require preSaleContributions + msg.value <= 6700 * 10^18
    require stor2[address(arg1)]
    require 10^6 * msg.value / 85106382978723 > 0
    require ext_code.size(0x83984d6142934bb535793a82adb0a46ef0f66b6d)
    call 0x83984d6142934bb535793a82adb0a46ef0f66b6d.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5, address(arg1), (20 * 10^6 * msg.value / 85106382978723 / 100) + (10^6 * msg.value / 85106382978723)
    require ext_call.success
    require ext_call.return_data[0]
    preSaleContributions += msg.value
    participantContribution[address(arg1)] += msg.value
    call 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Contributed(address(arg1), msg.value, (20 * 10^6 * msg.value / 85106382978723 / 100) + (10^6 * msg.value / 85106382978723));
    return 1
}

function contribute() payable {
    require block.timestamp >= 420111 * 3600
    require block.timestamp < 420615 * 3600
    require participantContribution[address(msg.sender)] + msg.value >= 10 * 10^18
    require participantContribution[address(msg.sender)] + msg.value <= 1100 * 10^18
    require preSaleContributions + msg.value <= 6700 * 10^18
    require stor2[address(msg.sender)]
    require 10^6 * msg.value / 85106382978723 > 0
    require ext_code.size(0x83984d6142934bb535793a82adb0a46ef0f66b6d)
    call 0x83984d6142934bb535793a82adb0a46ef0f66b6d.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5, msg.sender, (20 * 10^6 * msg.value / 85106382978723 / 100) + (10^6 * msg.value / 85106382978723)
    require ext_call.success
    require ext_call.return_data[0]
    preSaleContributions += msg.value
    participantContribution[address(msg.sender)] += msg.value
    call 0xbb12800e7446a51395b2d853d6ce7f22210bb5e5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Contributed(msg.sender, msg.value, (20 * 10^6 * msg.value / 85106382978723 / 100) + (10^6 * msg.value / 85106382978723));
    return 1
}



}

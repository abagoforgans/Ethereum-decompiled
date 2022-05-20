contract main {




// =====================  Runtime code  =====================


const FEE_CHARGER_DENOMINATOR = 10000


array of uint256 name;
array of uint256 description;
array of uint256 category;
array of uint256 version;
uint256 DENOMINATOR;
address owner;
uint8 feeMode; offset 160
address MOTAddress;
uint256 feePercentage;
uint256 feeAmount;
uint8 stor9; offset 160
address stor9;
mapping of uint256 stor10;

function name() {
    return name[0 len name.length]
}

function version() {
    return version[0 len version.length]
}

function feeAmount() {
    return feeAmount
}

function description() {
    return description[0 len description.length]
}

function owner() {
    return owner
}

function DENOMINATOR() {
    return DENOMINATOR
}

function feePercentage() {
    return feePercentage
}

function feeMode() {
    require feeMode <= 1
    return feeMode
}

function MOT() {
    return MOTAddress
}

function category() {
    return category[0 len category.length]
}

function _fallback() payable {
    revert
}

function adjustFeeAmount(uint256 arg1) {
    require msg.sender == owner
    feeAmount = arg1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function adjustFeeMode(uint8 arg1) {
    require msg.sender == owner
    require arg1 <= 1
    feeMode = arg1
    return 1
}

function setWalletId(address arg1) {
    require msg.sender == owner
    require arg1
    address(stor9.field_0) = arg1
    return 1
}

function adjustFeePercentage(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 10000
    feePercentage = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateFee(uint256 arg1) {
    require feeMode <= 1
    if not feeMode:
        return (arg1 * feePercentage / 10000)
    require feeMode <= 1
    if feeMode != 1:
        revert with 0, 'Unsupported fee mode.'
    return feeAmount
}

function getFeePercentage() {
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor10[ext_call.return_data[12 len 20]][msg.sender]
}

function setFeePercentage(uint256 arg1) {
    require arg1 >= 0
    require arg1 < DENOMINATOR
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor10[ext_call.return_data[12 len 20]][msg.sender] = arg1
    return 1
}

function setMotAddress(address arg1) {
    require msg.sender == owner
    require arg1
    require MOTAddress != arg1
    MOTAddress = arg1
    mem[128] = 'MOT'
    mem[131 len 0] = None
    mem[131] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(MOTAddress)
    call MOTAddress.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[131 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[131] <= 4294967296
    require mem[131] + 32 <= return_data.size
    require return_data.size >= mem[mem[131] + 131] + mem[131] + 32 and mem[mem[131] + 131] <= 4294967296
    _38 = mem[mem[131] + 131]
    mem[ceil32(return_data.size) + 163 len floor32(mem[mem[131] + 131])] = mem[mem[131] + 163 len floor32(mem[mem[131] + 131])]
    mem[ceil32(return_data.size) + floor32(mem[mem[131] + 131]) + -(mem[mem[131] + 131] % 32) + 195 len mem[mem[131] + 131] % 32] = mem[mem[131] + floor32(mem[mem[131] + 131]) + -(mem[mem[131] + 131] % 32) + 195 len mem[mem[131] + 131] % 32]
    mem[_38 + ceil32(return_data.size) + 163 len floor32(_38)] = mem[ceil32(return_data.size) + 163 len floor32(_38)]
    mem[(2 * floor32(_38)) + ceil32(return_data.size) + 195 len _38 % 32] = mem[ceil32(return_data.size) + floor32(_38) + -(_38 % 32) + 195 len _38 % 32]
    require sha3(mem[_38 + ceil32(return_data.size) + 163 len _38]) == sha3('MOT', 0 % 16777216)
    return 1
}

function calculateFee(address arg1, uint256 arg2) {
    require feeMode <= 1
    if not feeMode:
        if feeMode <= 1:
            if not feeMode:
                require ext_code.size(msg.sender)
                call msg.sender.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor10[ext_call.return_data[12 len 20]][msg.sender]:
                    return 0
                require ext_code.size(msg.sender)
                call msg.sender.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if DENOMINATOR:
                    return (arg2 * stor10[ext_call.return_data[12 len 20]][msg.sender] / DENOMINATOR)
            else:
                if feeMode <= 1:
                    if feeMode != 1:
                        revert with 0, 'Unsupported fee mode.'
                    if feeAmount:
                        require ext_code.size(MOTAddress)
                        call MOTAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(stor9.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not uint8(stor9.field_160)
                        uint8(stor9.field_160) = 1
                        require ext_code.size(MOTAddress)
                        call MOTAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, 0, address(stor9.field_0), feeAmount
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint8(stor9.field_160) = 0
                        require ext_code.size(MOTAddress)
                        call MOTAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(stor9.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == feeAmount + ext_call.return_data[0]
                    require ext_code.size(msg.sender)
                    call msg.sender.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor10[ext_call.return_data[12 len 20]][msg.sender]:
                        return 0
                    require ext_code.size(msg.sender)
                    call msg.sender.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if DENOMINATOR:
                        return (arg2 * stor10[ext_call.return_data[12 len 20]][msg.sender] / DENOMINATOR)
    else:
        if feeMode <= 1:
            if feeMode != 1:
                revert with 0, 'Unsupported fee mode.'
            if feeAmount > 0:
                require ext_code.size(MOTAddress)
                call MOTAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= feeAmount
                require ext_code.size(MOTAddress)
                call MOTAddress.0xdd62ed3e with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= feeAmount
            if feeMode <= 1:
                if not feeMode:
                    require ext_code.size(msg.sender)
                    call msg.sender.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor10[ext_call.return_data[12 len 20]][msg.sender]:
                        return 0
                    require ext_code.size(msg.sender)
                    call msg.sender.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if DENOMINATOR:
                        return (arg2 * stor10[ext_call.return_data[12 len 20]][msg.sender] / DENOMINATOR)
                else:
                    if feeMode <= 1:
                        if feeMode != 1:
                            revert with 0, 'Unsupported fee mode.'
                        if feeAmount:
                            require ext_code.size(MOTAddress)
                            call MOTAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(stor9.field_0)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not uint8(stor9.field_160)
                            uint8(stor9.field_160) = 1
                            require ext_code.size(MOTAddress)
                            call MOTAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, 0, address(stor9.field_0), feeAmount
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint8(stor9.field_160) = 0
                            require ext_code.size(MOTAddress)
                            call MOTAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(stor9.field_0)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == feeAmount + ext_call.return_data[0]
                        require ext_code.size(msg.sender)
                        call msg.sender.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor10[ext_call.return_data[12 len 20]][msg.sender]:
                            return 0
                        require ext_code.size(msg.sender)
                        call msg.sender.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if DENOMINATOR:
                            return (arg2 * stor10[ext_call.return_data[12 len 20]][msg.sender] / DENOMINATOR)
    revert
}



}

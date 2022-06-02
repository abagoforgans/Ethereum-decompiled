contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_2ca9071c(?)
#  - sub_cc9428ea(?)
#  - sub_f66383d4(?)
#
const NAME = 'PowerEther'


address owner;
uint256 sub_6c29c9a6;
uint256 sub_b9a10da4;
uint256 sub_106b7b01;
uint256 sub_0b66a428;
uint256 sub_669b31f7;
uint256 sub_cb68409e;
uint256 sub_131e8abc;
uint256 sub_4104ef0a;
uint256 sub_def6df74;
uint256 sub_b0aa146e;
uint256 sub_d5efe8c2;
uint256 sub_ddafb8ea;
uint256 sub_b0dbf402;
uint256 sub_1a50a59d;
uint256 sub_18a8727f;
uint256 sub_80837dbf;
address ceoAddress;
uint256 sub_8b9e8594;
uint256 sub_df333e68;
uint256 sub_a49e0063;
uint256 sub_747600a5;
uint8 activated_;
uint256 stor22;
uint256 minNumber;
uint256 maxNumber;
uint32 gasForOraclize;
uint256 sub_3718b1f2;
uint256 sub_130fe7f0;
uint256 totalGamesPlayed;
mapping of uint256 sub_bb40433b;

function ceoAddress() {
    return ceoAddress
}

function sub_0b66a428(?) {
    return sub_0b66a428
}

function sub_106b7b01(?) {
    return sub_106b7b01
}

function sub_130fe7f0(?) {
    return sub_130fe7f0
}

function sub_131e8abc(?) {
    return sub_131e8abc
}

function sub_18a8727f(?) {
    return sub_18a8727f
}

function sub_1a50a59d(?) {
    return sub_1a50a59d
}

function sub_3718b1f2(?) {
    return sub_3718b1f2
}

function maxNumber() {
    return maxNumber
}

function sub_4104ef0a(?) {
    return sub_4104ef0a
}

function minNumber() {
    return minNumber
}

function totalGamesPlayed() {
    return totalGamesPlayed
}

function sub_669b31f7(?) {
    return sub_669b31f7
}

function sub_6c29c9a6(?) {
    return sub_6c29c9a6
}

function gasForOraclize() {
    return gasForOraclize
}

function sub_747600a5(?) {
    return sub_747600a5
}

function sub_80837dbf(?) {
    return sub_80837dbf
}

function sub_8b9e8594(?) {
    return sub_8b9e8594
}

function owner() {
    return owner
}

function sub_a49e0063(?) {
    return sub_a49e0063
}

function sub_b0aa146e(?) {
    return sub_b0aa146e
}

function sub_b0dbf402(?) {
    return sub_b0dbf402
}

function sub_b9a10da4(?) {
    return sub_b9a10da4
}

function sub_bb40433b(?) {
    return sub_bb40433b[address(arg1)]
}

function sub_cb68409e(?) {
    return sub_cb68409e
}

function activated_() {
    return bool(uint8(activated_))
}

function sub_d5efe8c2(?) {
    return sub_d5efe8c2
}

function sub_ddafb8ea(?) {
    return sub_ddafb8ea
}

function sub_def6df74(?) {
    return sub_def6df74
}

function sub_df333e68(?) {
    return sub_df333e68
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function deactivate() {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    require msg.sender
    uint8(activated_) = 0
}

function updateBalance(uint256 arg1) payable {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    emit balanceUpdated(arg1);
}

function sub_43e5a17c(?) payable {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    sub_4104ef0a += arg1
    emit balanceUpdated(arg1);
}

function sub_84aeed3c(?) payable {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    sub_def6df74 += arg1
    emit balanceUpdated(arg1);
}

function sub_d83ee880(?) payable {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    sub_131e8abc += arg1
    emit balanceUpdated(arg1);
}

function activate() {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    require msg.sender
    uint256(stor22) = not uint8(activated_) or Mask(248, 8, uint256(stor22))
}

function withdrawPendingTransactions() {
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if bool(uint8(activated_)) != 1:
        revert with 0, 'The contract is inactive'
    sub_bb40433b[msg.sender] = 0
    call msg.sender with:
       value sub_bb40433b[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        return 0
    return 1
}

function sub_70a0aa5c(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    minNumber = arg1
}

function sub_7e6156ac(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    sub_d5efe8c2 = arg1
}

function sub_95e15c4b(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    sub_ddafb8ea = arg1
}

function sub_daeb39b5(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    sub_8b9e8594 = arg1
}

function sub_57e149e7(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    gasForOraclize = arg1
}

function setMaxNumber(uint256 arg1) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    maxNumber = arg1
}

function setCEO(address arg1) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    require arg1
    ceoAddress = arg1
}

function sub_023c3c87(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if arg1 < 10^9:
        revert with 0, ':Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    sub_106b7b01 = arg1
}

function sub_24700ed5(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if arg1 < 10^9:
        revert with 0, ':Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    sub_b9a10da4 = arg1
}

function sub_41f72afb(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if arg1 < 10^9:
        revert with 0, ':Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    sub_669b31f7 = arg1
}

function sub_463d855a(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if arg1 < 10^9:
        revert with 0, ':Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    sub_cb68409e = arg1
}

function sub_82e8c251(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if arg1 < 10^9:
        revert with 0, ':Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    sub_6c29c9a6 = arg1
}

function sub_edb08ec8(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if arg1 < 10^9:
        revert with 0, ':Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    sub_0b66a428 = arg1
}

function collectFees() {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x5468697320616374696f6e20697320617661696c61626c65206f6e6c792074,
                    0xfa207468652063757272656e742043454f000000000000000000000000000000
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract can interact onlyUwith humans'
    if not sub_b9a10da4:
        if not sub_0b66a428:
            if not sub_cb68409e:
                if 0 > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                     gas 2300 wei
            else:
                require sub_747600a5 * sub_cb68409e / sub_cb68409e == sub_747600a5
                require sub_747600a5 * sub_cb68409e >= 0
                if sub_747600a5 * sub_cb68409e > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value sub_747600a5 * sub_cb68409e wei
                     gas 2300 * is_zero(value) wei
        else:
            require sub_a49e0063 * sub_0b66a428 / sub_0b66a428 == sub_a49e0063
            if not sub_cb68409e:
                require sub_a49e0063 * sub_0b66a428 >= 0
                require sub_a49e0063 * sub_0b66a428 >= sub_a49e0063 * sub_0b66a428
                if sub_a49e0063 * sub_0b66a428 > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value sub_a49e0063 * sub_0b66a428 wei
                     gas 2300 * is_zero(value) wei
            else:
                require sub_747600a5 * sub_cb68409e / sub_cb68409e == sub_747600a5
                require sub_a49e0063 * sub_0b66a428 >= 0
                require (sub_747600a5 * sub_cb68409e) + (sub_a49e0063 * sub_0b66a428) >= sub_a49e0063 * sub_0b66a428
                if (sub_747600a5 * sub_cb68409e) + (sub_a49e0063 * sub_0b66a428) > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value (sub_747600a5 * sub_cb68409e) + (sub_a49e0063 * sub_0b66a428) wei
                     gas 2300 * is_zero(value) wei
    else:
        require sub_df333e68 * sub_b9a10da4 / sub_b9a10da4 == sub_df333e68
        if not sub_0b66a428:
            if not sub_cb68409e:
                require sub_df333e68 * sub_b9a10da4 >= sub_df333e68 * sub_b9a10da4
                if sub_df333e68 * sub_b9a10da4 > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value sub_df333e68 * sub_b9a10da4 wei
                     gas 2300 * is_zero(value) wei
            else:
                require sub_747600a5 * sub_cb68409e / sub_cb68409e == sub_747600a5
                require sub_df333e68 * sub_b9a10da4 >= sub_df333e68 * sub_b9a10da4
                require (sub_747600a5 * sub_cb68409e) + (sub_df333e68 * sub_b9a10da4) >= sub_df333e68 * sub_b9a10da4
                if (sub_747600a5 * sub_cb68409e) + (sub_df333e68 * sub_b9a10da4) > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value (sub_747600a5 * sub_cb68409e) + (sub_df333e68 * sub_b9a10da4) wei
                     gas 2300 * is_zero(value) wei
        else:
            require sub_a49e0063 * sub_0b66a428 / sub_0b66a428 == sub_a49e0063
            if not sub_cb68409e:
                require (sub_a49e0063 * sub_0b66a428) + (sub_df333e68 * sub_b9a10da4) >= sub_df333e68 * sub_b9a10da4
                if (sub_a49e0063 * sub_0b66a428) + (sub_df333e68 * sub_b9a10da4) > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value (sub_a49e0063 * sub_0b66a428) + (sub_df333e68 * sub_b9a10da4) wei
                     gas 2300 * is_zero(value) wei
            else:
                require sub_747600a5 * sub_cb68409e / sub_cb68409e == sub_747600a5
                require (sub_a49e0063 * sub_0b66a428) + (sub_df333e68 * sub_b9a10da4) >= sub_df333e68 * sub_b9a10da4
                require sub_747600a5 * sub_cb68409e >= 0
                if (sub_747600a5 * sub_cb68409e) + (sub_a49e0063 * sub_0b66a428) + (sub_df333e68 * sub_b9a10da4) > eth.balance(this.address):
                    revert with 0, ':Insufficient funds!'
                call ceoAddress with:
                   value (sub_747600a5 * sub_cb68409e) + (sub_a49e0063 * sub_0b66a428) + (sub_df333e68 * sub_b9a10da4) wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_df333e68 = 0
    sub_a49e0063 = 0
    sub_747600a5 = 0
}



}

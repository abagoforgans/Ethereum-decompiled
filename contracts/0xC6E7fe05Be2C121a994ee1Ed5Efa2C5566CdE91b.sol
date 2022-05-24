contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payees;
mapping of uint8 stor99;

function totalShares() {
    return totalShares
}

function payees(uint256 arg1) {
    require arg1 < payees.length
    return payees[arg1]
}

function released(address arg1) {
    return released[arg1]
}

function shares(address arg1) {
    return shares[arg1]
}

function totalReleased() {
    return totalReleased
}

function _fallback() payable {
  stop
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    _22 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = _22
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function initialize(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 12
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 'SplitPayment'
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 5
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = '1.9.0'
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 0] = None
    mem[(32 * arg1.length) + (32 * arg2.length) + 300] = 0
    _105 = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 12], 0)
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 0] = None
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 27] = mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 12], 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 293] = _105
    require not stor[_105][mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 5]]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require not shares[mem[(32 * idx) + 140 len 20]]
        payees.length++
        payees[payees.length] = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require totalShares + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalShares
        totalShares += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  12,
                  'SplitPayment' << 160,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[0] = 1
}

function claim() {
    require shares[address(msg.sender)] > 0
    require eth.balance(this.address) + totalReleased >= eth.balance(this.address)
    if not eth.balance(this.address) + totalReleased:
        require totalShares
        require released[address(msg.sender)] <= 0 / totalShares
        require (0 / totalShares) - released[address(msg.sender)]
        require eth.balance(this.address) >= (0 / totalShares) - released[address(msg.sender)]
        require 0 / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = 0 / totalShares
        require totalReleased + (0 / totalShares) - released[address(msg.sender)] >= totalReleased
        totalReleased = totalReleased + (0 / totalShares) - released[address(msg.sender)]
        call msg.sender with:
           value (0 / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address) + totalReleased
        require (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / eth.balance(this.address) + totalReleased == shares[address(msg.sender)]
        require totalShares
        require released[address(msg.sender)] <= (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares
        require ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        require eth.balance(this.address) >= ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        require (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares
        require totalReleased + ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] >= totalReleased
        totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        call msg.sender with:
           value ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

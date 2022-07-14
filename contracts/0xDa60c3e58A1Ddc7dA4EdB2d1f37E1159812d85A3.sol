contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of struct sub_638fd287;
uint256 stor3;
mapping of struct sub_43ee6388;
uint256 stor5;

function isDev(address arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_638fd287[address(arg1)].field_256)
}

function sub_43ee6388(?) {
    require calldata.size - 4 >= 32
    return sub_43ee6388[arg1].field_0, 
           sub_43ee6388[arg1].field_256,
           sub_43ee6388[arg1].field_512,
           bool(sub_43ee6388[arg1].field_768)
}

function sub_638fd287(?) {
    require calldata.size - 4 >= 32
    return sub_638fd287[arg1].field_0, bool(sub_638fd287[arg1].field_256)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_9c59c321(?) {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if bool(sub_638fd287[msg.sender].field_256) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c7944657673206661696c6564202d206d73672e73656e646572206973206e6f742061206465,
                    mem[205 len 23]
    if not sub_638fd287[address(arg1)].field_256:
        sub_638fd287[address(arg1)].field_256 = 1
        stor3++
    sub_638fd287[address(arg1)].field_0 = arg2
}

function sub_a840f10b(?) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if bool(sub_638fd287[msg.sender].field_256) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c7944657673206661696c6564202d206d73672e73656e646572206973206e6f742061206465,
                    mem[205 len 23]
    if arg1 > eth.balance(this.address):
        revert with 0, 'sorry out amount'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1d1378c3: msg.sender, arg1, block.timestamp
}

function getVaults(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_43ee6388[address(arg1)].field_768:
        return 0
    if not eth.balance(this.address) + stor1 / 10000:
        if sub_43ee6388[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath sub failed'
        return -sub_43ee6388[address(arg1)].field_512
    if sub_43ee6388[address(arg1)].field_256 * eth.balance(this.address) + stor1 / 10000 / eth.balance(this.address) + stor1 / 10000 != sub_43ee6388[address(arg1)].field_256:
        revert with 0, 'SafeMath mul failed'
    if sub_43ee6388[address(arg1)].field_512 > sub_43ee6388[address(arg1)].field_256 * eth.balance(this.address) + stor1 / 10000:
        revert with 0, 'SafeMath sub failed'
    return ((sub_43ee6388[address(arg1)].field_256 * eth.balance(this.address) + stor1 / 10000) - sub_43ee6388[address(arg1)].field_512)
}

function sub_d8aced9b(?) {
    require calldata.size - 4 >= 96
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if bool(sub_638fd287[msg.sender].field_256) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c7944657673206661696c6564202d206d73672e73656e646572206973206e6f742061206465,
                    mem[205 len 23]
    if arg2 > sub_43ee6388[stor0].field_256:
        revert with 0, 'amount is incorrect'
    if not sub_43ee6388[address(arg1)].field_768:
        sub_43ee6388[address(arg1)].field_768 = 1
        if arg2 > sub_43ee6388[stor0].field_256:
            revert with 0, 'SafeMath sub failed'
        sub_43ee6388[stor0].field_256 -= arg2
        sub_43ee6388[arg1].field_256 = arg2
        sub_43ee6388[arg1].field_0 = arg3
        stor5++
}

function removeDev(address arg1) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if bool(sub_638fd287[msg.sender].field_256) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c7944657673206661696c6564202d206d73672e73656e646572206973206e6f742061206465,
                    mem[205 len 23]
    if stor0 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7672656d6f766541646d696e206661696c6564202d2063616e6e6f742068617665206c657373207468616e203220646576,
                    mem[213 len 15]
    if stor3 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7672656d6f766541646d696e206661696c6564202d2063616e6e6f742068617665206c657373207468616e203220646576,
                    mem[213 len 15]
    if bool(sub_638fd287[address(arg1)].field_256) == 1:
        sub_638fd287[address(arg1)].field_256 = 0
        stor3--
}

function sub_43a38b8d(?) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if bool(sub_638fd287[msg.sender].field_256) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c7944657673206661696c6564202d206d73672e73656e646572206973206e6f742061206465,
                    mem[205 len 23]
    if stor0 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7672656d6f766541646d696e206661696c6564202d2063616e6e6f742068617665206c657373207468616e203220646576,
                    mem[213 len 15]
    if stor5 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7672656d6f766541646d696e206661696c6564202d2063616e6e6f742068617665206c657373207468616e203220646576,
                    mem[213 len 15]
    if 1 == bool(sub_43ee6388[address(arg1)].field_768):
        if sub_43ee6388[address(arg1)].field_256 + sub_43ee6388[stor0].field_256 < sub_43ee6388[stor0].field_256:
            revert with 0, 'SafeMath add failed'
        sub_43ee6388[stor0].field_256 += sub_43ee6388[address(arg1)].field_256
        sub_43ee6388[arg1].field_768 = 0
        stor5--
}

function withDraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if bool(sub_43ee6388[msg.sender].field_768) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x736f6e6c794469766573206661696c6564202d206d73672e73656e646572206973206e6f742061206469,
                    mem[206 len 22]
    if not sub_43ee6388[address(msg.sender)].field_768:
        if 0 < arg1:
            revert with 0, 'sorry out amount'
    else:
        if not eth.balance(this.address) + stor1 / 10000:
            if sub_43ee6388[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -sub_43ee6388[address(msg.sender)].field_512 < arg1:
                revert with 0, 'sorry out amount'
        else:
            if sub_43ee6388[address(msg.sender)].field_256 * eth.balance(this.address) + stor1 / 10000 / eth.balance(this.address) + stor1 / 10000 != sub_43ee6388[address(msg.sender)].field_256:
                revert with 0, 'SafeMath mul failed'
            if sub_43ee6388[address(msg.sender)].field_512 > sub_43ee6388[address(msg.sender)].field_256 * eth.balance(this.address) + stor1 / 10000:
                revert with 0, 'SafeMath sub failed'
            if (sub_43ee6388[address(msg.sender)].field_256 * eth.balance(this.address) + stor1 / 10000) - sub_43ee6388[address(msg.sender)].field_512 < arg1:
                revert with 0, 'sorry out amount'
    if arg1 <= 0:
        revert with 0, 'sorry out amount'
    if arg1 + stor1 < stor1:
        revert with 0, 'SafeMath add failed'
    stor1 += arg1
    if arg1 + sub_43ee6388[msg.sender].field_512 < sub_43ee6388[msg.sender].field_512:
        revert with 0, 'SafeMath add failed'
    sub_43ee6388[msg.sender].field_512 += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1d1378c3: msg.sender, arg1, block.timestamp
}



}

contract main {




// =====================  Runtime code  =====================


mapping of uint256 pIDxAddr_;
mapping of struct team_;
uint256 stor7DFE;
uint256 stor7DFE;
uint256 storCC69;
uint256 storCC69;
uint256 storD9D1;
uint256 storD9D1;
uint256 storEDC9;

function pIDxAddr_(address arg1) {
    return pIDxAddr_[arg1]
}

function team_(uint256 arg1) {
    return team_[arg1].field_0, team_[arg1].field_256, team_[arg1].field_512
}

function getGen() {
    if not pIDxAddr_[msg.sender]:
        revert with 0, 'sorry not in team'
    return team_[stor0[msg.sender]].field_256
}

function withdraw() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not pIDxAddr_[msg.sender]:
        revert with 0, 'sorry not team'
    if team_[stor0[msg.sender]].field_256 > 0:
        team_[stor0[msg.sender]].field_256 = 0
    call team_[stor0[msg.sender]].field_0 with:
       value team_[stor0[msg.sender]].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not msg.value:
        if not msg.value:
            if not msg.value:
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                storEDC9 += msg.value
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (stor7DFE * msg.value / 1000)
        else:
            if storD9D1 * msg.value / msg.value != storD9D1:
                revert with 0, 'SafeMath mul failed'
            if not msg.value:
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storD9D1 * msg.value / 1000)
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storD9D1 * msg.value / 1000) - (stor7DFE * msg.value / 1000)
    else:
        if storCC69 * msg.value / msg.value != storCC69:
            revert with 0, 'SafeMath mul failed'
        if not msg.value:
            if not msg.value:
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000)
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000) - (stor7DFE * msg.value / 1000)
        else:
            if storD9D1 * msg.value / msg.value != storD9D1:
                revert with 0, 'SafeMath mul failed'
            if not msg.value:
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000)
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000) - (stor7DFE * msg.value / 1000)
}

function deposit() payable {
    if not msg.value:
        if not msg.value:
            if not msg.value:
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                storEDC9 += msg.value
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (stor7DFE * msg.value / 1000)
        else:
            if storD9D1 * msg.value / msg.value != storD9D1:
                revert with 0, 'SafeMath mul failed'
            if not msg.value:
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storD9D1 * msg.value / 1000)
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if 0 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 < 0:
                    revert with 0, 'SafeMath add failed'
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storD9D1 * msg.value / 1000) - (stor7DFE * msg.value / 1000)
    else:
        if storCC69 * msg.value / msg.value != storCC69:
            revert with 0, 'SafeMath mul failed'
        if not msg.value:
            if not msg.value:
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000)
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 < 0:
                    revert with 0, 'SafeMath add failed'
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000) - (stor7DFE * msg.value / 1000)
        else:
            if storD9D1 * msg.value / msg.value != storD9D1:
                revert with 0, 'SafeMath mul failed'
            if not msg.value:
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if 0 > msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE < 0:
                    revert with 0, 'SafeMath add failed'
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000)
            else:
                if stor7DFE * msg.value / msg.value != stor7DFE:
                    revert with 0, 'SafeMath mul failed'
                if storCC69 * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                if storD9D1 * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if stor7DFE * msg.value / 1000 > msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000):
                    revert with 0, 'SafeMath sub failed'
                if storCC69 + (storCC69 * msg.value / 1000) < storCC69 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storCC69 += storCC69 * msg.value / 1000
                if storD9D1 + (storD9D1 * msg.value / 1000) < storD9D1 * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                storD9D1 += storD9D1 * msg.value / 1000
                if stor7DFE + (stor7DFE * msg.value / 1000) < stor7DFE * msg.value / 1000:
                    revert with 0, 'SafeMath add failed'
                stor7DFE += stor7DFE * msg.value / 1000
                if storEDC9 < 0:
                    revert with 0, 'SafeMath add failed'
                storEDC9 = storEDC9 + msg.value - (storCC69 * msg.value / 1000) - (storD9D1 * msg.value / 1000) - (stor7DFE * msg.value / 1000)
    return 1
}



}

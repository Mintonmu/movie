(function ($) {
    $.fn.jsRapStar = function (options) {

        return this.each(function () {
            this.opt = $.extend({
                star: '&#9733',
                colorFront: 'yellow',
                colorBack: 'white',
                enabled: true,
                step: true,
                starHeight: 32,
                length: 6,
                onClick: null,
                onMousemove: null,
                onMouseleave: null,
            }, options);
            var base = this;
            var starH = Array(this.opt.length + 1).join('<span>' + this.opt.star + '</span>');
            this.StarB = $(this).addClass('rapStarBack').css({
                color: this.opt.colorBack,
                'font-size': this.opt.starHeight + 'px'
            }).html(starH);
            var start = parseFloat($(this).attr('start'));
            var sw = this.StarB.width() / this.opt.length;
            var aw = start * sw;
            this.StarF = $('<div>').addClass('rapStarFront').css({
                color: this.opt.colorFront,
                'font-size': this.opt.starHeight + 'px'
            }).html(starH).width(aw).appendTo(this);
            if (this.opt.enabled)
                $(this).bind({
                    mousemove: function (e) {
                        e.preventDefault();
                        var relativeX = e.clientX - $(base)[0].getBoundingClientRect().left;
                        var e = Math.floor(relativeX / sw) + 1;
                        if (base.opt.step) newWidth = e * sw;
                        else newWidth = relativeX;
                        this.StarF.width(newWidth);
                        if (base.opt.onMousemove)
                            base.opt.onMousemove.call(base, newWidth / sw);
                    },
                    mouseleave: function (e) {
                        this.StarF.width(aw);
                        if (base.opt.onMouseleave)
                            base.opt.onMouseleave.call(base, start);
                    },
                    click: function (e) {
                        e.preventDefault();
                        aw = newWidth;
                        this.StarF.width(newWidth);
                        start = newWidth / sw;
                        if (base.opt.onClick)
                            base.opt.onClick.call(base, start);
                    }
                });
        })
    }
})(jQuery);
module Forem
  class ModerationMailer < ActionMailer::Base

    def post_flagged(post)
      @post = Post.find(post.id)

      mail(:to      => Refinery::Setting.get('global_community_manager_address', scoping: 'forums'),
           :from    => 'no-reply@wtca.org',
           :subject => I18n.t('forem.post.received_flagging') )
    end
  end
end
